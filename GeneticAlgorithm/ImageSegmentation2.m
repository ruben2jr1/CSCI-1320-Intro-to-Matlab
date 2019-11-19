%%
Im = imread('Dice3.jpg');
Im = im2double(Im);
[r,c,p] = size(Im);

%Extract individual planes from RGB Image
imR = squeeze(Im(:,:,1));
subplot(1,3,1);
histogram(imR);
title(graythresh(imR));
imG = squeeze(Im(:,:,2));
subplot(1,3,2);
histogram(imG);
title(graythresh(imG));
imB = squeeze(Im(:,:,3));
subplot(1,3,3);
histogram(imB);
title(graythresh(imB));
%Thresholding on individual planes.
imBinaryR = imbinarize(imR,graythresh(imR));
imBinaryG = imbinarize(imG,graythresh(imG));
imBinaryB = imbinarize(imB,graythresh(imB));
imBinary = imcomplement(imBinaryR&imBinaryG&imBinaryB);
% imshow(imBinary);
%%
%    Fill holes and clear Border;
imClean = imfill(imBinary,'holes');
imClean = imclearborder(imClean);
%    Morphology   
se = strel('disk',30);
%                 ^For different size images this
%                  Will change.
imClean = imopen(imClean,se);
% imshow(imClean);
%%
%Segmented gray-level image
[labels, numlabels] = bwlabel(imClean);
disp( num2str(numlabels));
%initialize matrices.
rlabel = zeros(r,c);
rlabel(labels==1)=1;
rlabel(labels==2)=1;
rlabel(labels==3)=1;
rlabel(labels==4)=1;
rlabel(labels==5)=1;

% M = Objectify(Im,labels);
% %First Object
% subplot(1,5,1);
% image(M{1,1});
% %Second Object
% subplot(1,5,2);
% image(M{1,2});
% %Third Object
% subplot(1,5,3);
% image(M{1,3});
% %Fourth Object
% subplot(1,5,4);
% image(M{1,4});
% %Fifth Object
% subplot(1,5,5);
% image(M{1,5});