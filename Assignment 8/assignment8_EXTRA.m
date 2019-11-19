%Hardest Questions vs Easier Questions.
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
%Extracting answers to questions
%For comparison.
Questions = cell(1,17);
for c = 7:23
    answer = blanks(101);
    for r = 3:103
        %Some answers are double char 
        %So need to replace these.
        if length(raw{r,c})>1
            raw(r,c) = {'Z'};
        end
        answer(r-2) = raw{r,c};
    end
    Questions(1,c-6) = {(answer)};
end
%Compare question answers to key.
%And sum up how many people got them right.
Correct = zeros(1,17);
for j = 1:17
    Correct(1,j) = sum(key(j)==Questions{1,j});
end
%Compare question answers to key.
%And sum up how many people got them wrong.
inCorrect = zeros(1,17);
for j2 = 1:17
    inCorrect(1,j2) = 101-sum(key(j2)==Questions{1,j2});
end
%Visualization using pie charts.
label = ({'Q1','Q2','Q3','Q4','Q5','Q6','Q7','Q8','Q9','Q10','Q11','Q12','Q13','Q14','Q15','Q16','Q17'});
subplot(1,2,1);
pie(Correct,label);
title('Percent of Students Correct');
subplot(1,2,2);
pie(inCorrect,label);
title('Percent of students incorrect');