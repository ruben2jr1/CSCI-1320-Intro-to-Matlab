function [ outImg ] = luminance_L( inImg )
x = inImg;
for y = 1:3
    if y == 1
        I1(:,:) = 0.299.*x(:,:,y);
    elseif y == 2
        I2(:,:) = 0.587.*x(:,:,y);
    elseif y == 3
        I3(:,:) = 0.114.*x(:,:,y);
    end
end
I(:,:) = I1 + I2 + I3;
outImg = I;
end
