function [ outImg ] = addRandomNoise_L( inImg )
c = inImg;
[row,col,page] = size(c);
for y = 1:page
    c(:,:,y) = c(:,:,y) + uint8((-255 + (255 +255)*rand(row,col)));
end
outImg = c;
end