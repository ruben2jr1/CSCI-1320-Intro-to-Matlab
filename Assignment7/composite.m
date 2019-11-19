function [ outImg ] = composite( inImg )
[row,col,page] = size( inImg );
x = zeros(2*row,2*col,page);
for y = 1:3
    x(1:row,1:col,y) = inImg(:,:,y);
end
x((1+row):(2*row),(1):(col),2) = inImg(:,:,2);
x((1):(row),(1+col):(2*col),1) = inImg(:,:,1);
x((1+row):(2*row),(1+col):(2*col),3) = inImg(:,:,3);
outImg = x/255;
end