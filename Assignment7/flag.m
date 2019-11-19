function [ outImg ] = flag(inImg1,inImg2,inImg3)
[row,col,page] = size(inImg1);
x = zeros(row,3*col,page);
x1 = imresize(inImg2,[row,col]);
x2 = imresize(inImg3,[row,col]);
x3 = inImg1;
x(1:row,1:col,1) = x3(:,:,1);
x(1:row,(col+1):2*col,1:3) = makeBright_L(x1(:,:,1:3),150);
x(1:row,(2*col+1):3*col,3) = x2(:,:,3);
outImg = x/255;
end