function [ outImg ] = invert_NL( inImg )
x = inImg;
x(:,:,1) = 255 - x(:,:,1);
x(:,:,2) = 255 - x(:,:,2);
x(:,:,3) = 255 - x(:,:,3);
outImg = x;
end