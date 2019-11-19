%{
This function will calculate 
the fitness of all the images
within the population.
%}
function [Y] = calculateFitnessImage(X,TargetImage)
% First grab the dimansion of the cell
%containing the images.
[~,cX,~] = size(X);

%Improving fitness task 2.2.
for i = cX
    X{1,i} = meanfilter2(X{1,i});
end
TargetImage = meanfilter2(TargetImage);


%Size of Target image.
[rTI,cTI,pTI] = size(TargetImage);
% We also want a tolerance within 
Tolerance = 10;
% accepted values of pixels.
Y = zeros(1,cX);
for i = 1:cX
    %Result is vector with each element a quantity of Fitness for corresponding member of population. (doubles)
    Y1 = X{1,i}>=(TargetImage - Tolerance) & X{1,i}<=(TargetImage + Tolerance);
    Y(1,i) = ((sum(sum(sum(Y1))))/(rTI*cTI*pTI))^3;
end
end