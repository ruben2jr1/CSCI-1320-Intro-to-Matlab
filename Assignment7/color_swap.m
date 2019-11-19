function [ outImg ] = color_swap(inImg,r1,g1,b1,r2,g2,b2,allowed)
%%
%First thing first:
if r1<0 || r2<0
    error('Integers must be Positive and from 0 to 255');
elseif g1<0 || g2<0
    error('Integers must be Positive and from 0 to 255');
elseif b1<0 || b2<0
    error('Integers must be Positive and from 0 to 255');
end
%Checking intensity
if r1>255 || r2>255
    error('Integers must be Positive and from 0 to 255');
elseif g1>255 || g2>255
    error('Integers must be Positive and from 0 to 255');
elseif b1>255 || b2>255
    error('Integers must be Positive and from 0 to 255');
end
%%
%Breaking the image into pages:
red_page = inImg(:,:,1);
green_page = inImg(:,:,2);
blue_page = inImg(:,:,3);
%%
%Finding where in the matrix conditions are met. First Set.
%find((red_page < r1+allowed) & (red_page > r1-allowed));
%find((green_page < g1+allowed) & (green_page > g1-allowed));
%find((blue_page < b1+allowed) & (blue_page > b1-allowed));
%Finding where in the matrix conditions are met. Second Set.
%find((red_page < r2+allowed) & (red_page > r2-allowed));
%find((green_page < g2+allowed) & (green_page > g2-allowed));
%find((blue_page < b2+allowed) & (blue_page > b2-allowed));
%%
%Swaping colors.
red_page((red_page < r1+allowed) & (red_page > r1-allowed)) = r2;
green_page((green_page < g1+allowed) & (green_page > g1-allowed)) = g2;
blue_page((blue_page < b1+allowed) & (blue_page > b1-allowed)) = b2;
%%
%Stitch To-Get-Her
outImg(:,:,1) = red_page;
outImg(:,:,2) = green_page;
outImg(:,:,3) = blue_page;
end