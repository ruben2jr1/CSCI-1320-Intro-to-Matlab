function [ outImg ] = invert_L( inImg )
x = inImg;
for y = 1:3
    x(:,:,y) = 255 - x(:,:,y);
end
outImg = x;
end