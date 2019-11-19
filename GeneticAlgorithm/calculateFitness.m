%{
Testing the fitness of the population.
%}
function [Y] = calculateFitness(X,TargetString)

% Target String:
TSF = double(TargetString);

% 1 Conversion of Population:
[~,c,~] = size(X);
% 2 Comparison matrix concatenation.
CmpMat = cell(1,c);
% 3 Sum of DNA Match Matrix Concatenation.
SumDNA = zeros(1,c);
% 4 Final Fitness (Decimal) Matrix Concatenation
Y = zeros(1,c);
for i = 1:c
    % 1
    X{1,i} = double(X{1,i});
    % 2
    CmpMat{1,i} = (TSF == X{1,i});
    % 3
    SumDNA(1,i) = sum(CmpMat{1,i});
    % 4 Output is double data type.
    Y(1,i) = SumDNA(1,i)/(length(TSF));
end




end