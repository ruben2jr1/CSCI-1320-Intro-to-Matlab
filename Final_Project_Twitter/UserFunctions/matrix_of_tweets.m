function [M] = matrix_of_tweets(raw,Max_Number_of_Tweets,Col_for_States,Col_for_tweets)
[r,~,~] = size(raw);
%col 14 is states
%col 8 is tweets
vecOfStates{1,1} = 'AL'; % Alabama
%vecOfStates{1,1} = 'AK'; % Alaska
vecOfStates{1,3} = 'AR'; % Arkansas
vecOfStates{1,2} = 'AZ'; % Arizona
vecOfStates{1,4} = 'CA'; % California
vecOfStates{1,5} = 'CO'; % Colorado
vecOfStates{1,6} = 'CT'; % Connecticut
vecOfStates{1,49} = 'DC'; % District of Columbia
vecOfStates{1,7} = 'DE'; % Delaware
vecOfStates{1,8} = 'FL'; % Florida
vecOfStates{1,9} = 'GA'; % Georgia
%vecOfStates{1,1} = 'HA'; % Hawaii
vecOfStates{1,13} = 'IA'; % Iowa
vecOfStates{1,10} = 'ID'; % Idaho
vecOfStates{1,11} = 'IL'; % Illinois
vecOfStates{1,12} = 'IN'; % Indiana
vecOfStates{1,14} = 'KS'; % Kansas
vecOfStates{1,15} = 'KY'; % Kentucky
vecOfStates{1,16} = 'LA'; % Louisiana
vecOfStates{1,19} = 'MA'; % Massachussets
vecOfStates{1,18} = 'MD'; % Maryland
vecOfStates{1,17} = 'ME'; % Maine
vecOfStates{1,20} = 'MI'; % Michigan
vecOfStates{1,21} = 'MN'; % Minnesota
vecOfStates{1,23} = 'MO'; % Missouri
vecOfStates{1,22} = 'MS'; % Mississippi
vecOfStates{1,24} = 'MT'; % Montana
vecOfStates{1,31} = 'NC'; % North Carolina
vecOfStates{1,32} = 'ND'; % North Dakota
vecOfStates{1,25} = 'NE'; % Nebraska
vecOfStates{1,27} = 'NH'; % New Hampshire
vecOfStates{1,28} = 'NJ'; % New Jersey
vecOfStates{1,29} = 'NM'; % New Mexico
vecOfStates{1,26} = 'NV'; % Nevada
vecOfStates{1,30} = 'NY'; % New York
vecOfStates{1,33} = 'OH'; % Ohio
vecOfStates{1,34} = 'OK'; % Oklahoma
vecOfStates{1,35} = 'OR'; % Oregon
vecOfStates{1,36} = 'PA'; % Pennsylvania
%vecOfStates{1,1} = 'PR'; % Puerto Rico
vecOfStates{1,37} = 'RI'; % Rhode Island
vecOfStates{1,38} = 'SC'; % South Carolina
vecOfStates{1,39} = 'SD'; % South Dakota
vecOfStates{1,40} = 'TN'; % Tennessee
vecOfStates{1,41} = 'TX'; % Texas
vecOfStates{1,42} = 'UT'; % Utah
vecOfStates{1,44} = 'VA'; % Virginia
vecOfStates{1,43} = 'VT'; % Vermont
vecOfStates{1,45} = 'WA'; % Washington
vecOfStates{1,47} = 'WI'; % Wisconsin
vecOfStates{1,46} = 'WV'; % West Virginia
vecOfStates{1,48} = 'WY'; % Wyoming
%concatenate:
MOfTweets = cell(49,r);
for i = 1:49
    for j = 2:r
        if ~isempty(strfind(raw{j,Col_for_States},vecOfStates{1,i}))
            MOfTweets{i,j} = raw{j,Col_for_tweets};
        end
    end
end
[r1,c1] = size(MOfTweets);
MOfTweets2 = cell(r1,Max_Number_of_Tweets);
for i = 1:r1
    k = 0;
    for j = 1:c1
        if ~isempty(MOfTweets{i,j})
            k = k + 1;
            MOfTweets2{i,k} = MOfTweets{i,j};
        else
            k = k + 0;
        end
    end
end
M = MOfTweets2;
end