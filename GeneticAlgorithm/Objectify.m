function [M] = Objectify(OriginalImage,Mask)
%Assume image is already in matrix form.. and Doubles.
%MAsk is then same size as OG image.
%How many Objects?
NumberOfObjects = max(max(Mask));
%[r,c,p] = size(OriginalImage);

%Create Matrix of Object images.
M = cell(1,NumberOfObjects);
for i = 1:NumberOfObjects
    [x,y] = find(Mask == i);
    Xmin = min(x); Ymin = min(y);
    Xmax = max(x); Ymax = max(y);
    Object = OriginalImage(Xmin:Xmax,Ymin:Ymax,:);
    
    M{1,i} = Object;
end
end