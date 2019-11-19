%little experimentation 
%Subject: image processing (SubCompetition)
%T = [0,0,0,0,1,1,1,1];
%T1 = diff(T,1);

I = imread('Dice.jpg');
cform = makecform('srgb2lab');
lab_he = applycform(I,cform);

ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 5;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',5);
subplot(1,2,1);
pixel_labels1 = abs(diff(reshape(cluster_idx,nrows,ncols),1,1));
pixel_labels2 = abs(diff(reshape(cluster_idx,nrows,ncols),1,2));
[r1,c1] = size(pixel_labels1);
[r2,c2] = size(pixel_labels2);
pixel_labels3 = zeros(nrows,ncols);
pixel_labels4 = zeros(nrows,ncols);
pixel_labels3(1:r1,:) = pixel_labels1;
pixel_labels4(:,1:c2) = pixel_labels2;
imshow(pixel_labels3 + pixel_labels4,[]), title('image labeled by cluster index');

subplot(1,2,2);
pixel_labels = reshape(cluster_idx,nrows,ncols);
imshow(pixel_labels,[]), title('image labeled by cluster index');