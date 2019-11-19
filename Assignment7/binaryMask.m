function [ outImg ] = binaryMask( inImg )
th = 115;
%%
%red_page = inImg(:,:,1);
%green_page = inImg(:,:,2);
%blue_page = inImg(:,:,3);
%%
inImg(inImg >= th) = 0;
inImg(inImg > 0 & inImg<255) = 255;
outImg = inImg;
end