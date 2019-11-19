%{
This function mutates DNA of child.
%}
function [Y] = causeMutation(X)
%First convert to double.
X = double(X);
%Mutation factor. (controls occurences)
MR = randi([1,100],1);
%{ 
Since i have different areas where the
randomness happens i can create a vector 
containing all the possibilities. :.
%}
V = [32,65:90,97:122];
%Dimensions of child.
[~,c,~] = size(X);
for i = 1:c
    if mod(MR,100) == 0
        X(i) = V(1,randi([1,length(V)],1));
    end
end
%Resulting child is mutated thusly lol.
%Output is char data type.
Y = char(X);
end
        