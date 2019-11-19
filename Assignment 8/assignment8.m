%Pulling the file to view which
%file is best.
[num,txt,raw] = xlsread('Section9_data.xlsx');
%Extracting key
k1 = string(raw(2,7:23));
%Formatting key to string.
%Concatenating
key = blanks(length(k1));
for i = 1:length(k1)
    key(i) = k1(i);
end
%Pulling the rest of the answers for each
%Individual student.
%Cell of strings.
s_answers = cell(1,100);
%In file row 3 through 103 contain answers
%In file col 7 through 23 contain answers
for r = 3:103
    S = blanks(length(k1));
    for c = 7:23
        %Some answers are double char 
        %So need to replace these.
        if length(raw{r,c})>1
            raw(r,c) = {'Z'};
        end
        %Each slot in compare is a student 
        %answer sheet.
        S(c-6) = raw{r,c};
    end
    s_answers(1,r-2) = {S};
end
%Next we will get the points to each student by 
%comparing the students answers to key.
%Each slot element here is a students points
points_MC = zeros(1,101);
for j = 1:101
    points_MC(1,j) = sum(key==s_answers{1,j});
end
%Points for Essay
%Each slot is individual student score.
points_E = zeros(1,100);
for x = 3:103
    points_E(1,x-2) = raw{x,5};
end
%Final score is adding MC and E Scores.
Final_Score = points_MC*5 + points_E;
%Bin size
n = std(Final_Score)*(1/(101^(1/3)))*3.49;
%Histogram
histogram(Final_Score,round(n));
xlabel('Score');
ylabel('Number of people to score X score');