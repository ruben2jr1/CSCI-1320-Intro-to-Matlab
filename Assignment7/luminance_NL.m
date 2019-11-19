function [ outImg ] = luminance_NL( inImg )
x = inImg;
y(:,:) = 0.299.*x(:,:,1) + 0.587.*x(:,:,2) + 0.114.*x(:,:,3);
outImg = y;
end