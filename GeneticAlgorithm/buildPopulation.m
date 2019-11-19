%{
Task 1.1 Randomly generate initial 
population of strings.
%}
function [X] = buildPopulation(PopulationSize,TargetString)
% 1. 'To be or not to be" -- String length = 18.
% 2. Capitals in ASCII are from 65 - 90
% 3. Lower case in ASCII is from 97 - 122
% 4. Space is 32.
%{ 
Since i have different areas where the
randomness happens i can create a vector 
containing all the possibilities. :.
%}
%Find length of target string.
[~,c,~] = size(TargetString);
V = [32,65:90,97:122]; %LengthOfV = 51;
%Concatenate for resulting cell.
X = cell(1,PopulationSize);
for i = 1:PopulationSize
    %Concatenate for string.
    Y = blanks(c);
    for j = 1:c
        %Generate random character.
        in = char(V(1,randi([1,length(V)],1)));
        Y(j) = in;
    end
    %output are char data type.
    X{1,i} = Y;
end