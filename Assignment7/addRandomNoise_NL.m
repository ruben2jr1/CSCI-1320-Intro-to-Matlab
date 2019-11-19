function [ outImg ] = addRandomNoise_NL( inImg )
c = inImg;
[row,col,~] = size(c);
c(:,:,1) = c(:,:,1) + uint8((-255 + (255 +255)*rand(row,col)));
c(:,:,2) = c(:,:,2) + uint8((-255 + (255 +255)*rand(row,col)));
c(:,:,3) = c(:,:,3) + uint8((-255 + (255 +255)*rand(row,col)));
outImg = c;
end