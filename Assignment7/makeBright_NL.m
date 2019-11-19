function [ outImg ] = makeBright_NL( inImg, brightness)
x = inImg;
if brightness>0
    x(:,:,1) = x(:,:,1) + 255*brightness/255;
    x(:,:,2) = x(:,:,2) + 255*brightness/255;
    x(:,:,3) = x(:,:,3) + 255*brightness/255;
elseif brightness<=0
    x(:,:,1) = x(:,:,1).*(1 + 1*brightness/255);
    x(:,:,2) = x(:,:,2).*(1 + 1*brightness/255);
    x(:,:,3) = x(:,:,3).*(1 + 1*brightness/255);
end
outImg = x;
end