% Ruben Hinojosa Torres, Jianai Zhao, CSCI 1320
load('raw.mat','Raw');
raw = Raw;
clear Raw
Initial_Row_lat = 2;
Initial_Col_lat = 11;
Initial_Row_long = 2;
Initial_Col_long = 12;
%--------------------------------------------------------------------------
%{
Important!!! --> This function works for
row operations. Value extraction for latitudes
and longitudes must be in row direction
(up and down).
%}
%--------------------------------------------------------------------------
%Read in file
[r,~,~] = size(raw);
%Concatenate for lat vector
Vec_of_lat = zeros(1,r);
for r1 = Initial_Row_lat:r
    Vec_of_lat(1,r1) = raw{r1,Initial_Col_lat};
end
%Concetate for long vector
Vec_of_long = zeros(1,r);
for r2 = Initial_Row_long:r
    Vec_of_long(1,r2) = raw{r2,Initial_Col_long};
end


%Create figure for plotting
figure; 
%load a map of the CONUS
ax = usamap('conus');
%select only states within CONUS
states = shaperead('usastatelo', 'UseGeoCoords', true,...
  'Selector',...
  {@(name) ~any(strcmp(name,{'Alaska','Hawaii'})), 'Name'});
%Show the state borders on the map with a white face
geoshow(ax, states, 'Facecolor',[1 1 1])
%Keep the axis on for refrence along with labels
framem on; gridm on; mlabel on; plabel on
plotm(Vec_of_lat,Vec_of_long,'.r');
%The red dots on the map is where the tweet was
%Tweeted.