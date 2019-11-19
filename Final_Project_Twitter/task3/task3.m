% Ruben Hinojosa Torres, Jianai Zhao, CSCI 1320
function [V,Max,Min] = task3(Filename)
load(Filename)
raw = Raw;
Initial_Row = 2;
Initial_Col = 14;
%Read in file.
[r,~,~] = size(raw);
%Assuming the data has been cleaned
%{
We must first create a vector of strings to compare 
This vector of strings must include all possible states
in example TX for texas NY for New York, They
are of this form in the data.
!!! note, Capitals !!!
This will most likely be hardcoded.
%}
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
%{
Next we have to compare for each string to the string
inside the raw clean data.
%}
Vec_of_number_of_tweets = zeros(1,49);%Or however many states we can use
for r1 = 1:49%or however many states we use.
    Vec_of_summed_counts = 0;
    for r2 = Initial_Row:r%or however much data there is--> 2 is the first because of raw.
    Vec_of_summed_counts = Vec_of_summed_counts + ~isempty(strfind(raw{r2,Initial_Col},vecOfStates{1,r1}));
    end
    Vec_of_number_of_tweets(1,r1) = Vec_of_summed_counts;
end
bar(Vec_of_number_of_tweets,1);
set(gca, 'XTick', 1:49, 'XTickLabel', vecOfStates);
xlabel("States");
ylabel("Number of Tweets");

Max = max(Vec_of_number_of_tweets);
Min = min(Vec_of_number_of_tweets);
V = Vec_of_number_of_tweets;

clear Initial_Col Initial_Row r r1 r2 raw Vec_of_number_of_tweets Vec_of_summed_counts vecOfStates
end