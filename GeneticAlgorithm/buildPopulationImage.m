%{
This functions creates a population of 
random images according to the 
target images size.
Assume image is in RGB format.
%}
function [Y] = buildPopulationImage(PopulationSize,TargetImage)
% Get size from Target image.
[r,c,p] = size(TargetImage);
% Concatenate for final cell of population.
Y = cell(1,PopulationSize);
for i = 1:PopulationSize
    Y{1,i} = uint8(randi([0,255],r,c,p));
end
end