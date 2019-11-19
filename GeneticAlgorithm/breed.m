%{
This function will breed the child from
two of the parents within the mating pool.
%}
function [Y] = breed(X1,X2)
%Dimensions for parents.
[~,c1,~] = size(X1);
%[~,c2,~] = size(X2);
%__________________________________________________________________________
% %{
% First Method will be splitting the DNA of
% The parents by certain amount.
% %}
% % Y = 1/2(X1) + 1/2(X2)
% % Concatenate for child
% mid = round(c1/2);
% X2(1:mid) = X1(1:mid);
% %Output is char data type
% Y = X2;
%__________________________________________________________________________
%{
This method is to produce a child from
random DNA choices within the parent DNA.
%}
Index = randi([1,c1],[1,randi(c1)]);
X2(Index) = X1(Index);
%Output is char data type
Y = X2;
end