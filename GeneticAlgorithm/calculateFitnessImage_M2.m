function [V] = calculateFitnessImage_M2(Population,TargetImage)
%Convert Target Image to doubles type.
TargetImage = double(TargetImage);
%Size of target Image
[R,C,P] = size(TargetImage);
%Changes for image along (up,down,left,right) directions.
Y1 = diff(TargetImage,1,1);
Y2 = diff(rot90(TargetImage),1,1);
Y3 = diff(rot90(rot90(TargetImage)),1,1);
Y4 = diff(rot90(rot90(rot90(TargetImage))),1,1);
% Make these into vector. (Cell)
Y = [{Y1};{Y2};{Y3};{Y4}];
%{
Now we have to do it to the population
of the random images.
Remember we have to compare so it might
be wise to compare the arrays at the same
time

Result has to be vector of doubles
containing the fitness of each 
population member.
%}
%First create matrix of rotated Population members.
X_Rotated = cell(4,1);
%Vector of compared Arrays (relative to Target String).
Compared = cell(4,length(Population));
%Tolerance.
Tolerance = (10);
%Fitness for 4 cases: (up,down,left,right)
Fit = zeros(4,length(Population));
%Final Vector of fitness
V = zeros(1,length(Population));
for i = 1:length(Population)
    %Calc change in pixel for each direction 
    %For each population member.
    X_Rotated{1,1} = diff(Population{1,i},1,1);
    X_Rotated{2,1} = diff(rot90(Population{1,i}),1,1);
    X_Rotated{3,1} = diff(rot90(rot90(Population{1,i})),1,1);
    X_Rotated{4,1} = diff(rot90(rot90(rot90(Population{1,i}))),1,1);
    for j = 1:4
        Compared{j,i} = (((Y{j,1} - Tolerance) <= X_Rotated{j,1}) & ((Y{j,1} + Tolerance) >= X_Rotated{j,1}));
        Fit(j,i) = (((sum(sum(sum(Compared{j,i}))))/(R*C*P))^3);
    end
    V(1,i) = sqrt((Fit(1,i)^2) + (Fit(2,i)^2) + (Fit(3,i)^2) + (Fit(4,i)^2));
    
end


end