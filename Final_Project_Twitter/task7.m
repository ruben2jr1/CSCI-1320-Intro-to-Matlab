%task7
%Loading raw matrix for all data.
load('raw.mat');
load('VS.mat');
raw = Raw;
clear Raw
[r,c,~] = size(raw);
%Loading Number of data points for each state.
load('Number_of_appearances.mat');
%Concatenate for final result.
UN_NF = cell(49,1);
%concatenate cell array of user names along with the
%number of followers they have.
for Omega = 1:49
count = 0;
UN = cell(countN(Omega,1),1);
NF = zeros(countN(Omega,1),1);
for i = 2:r
    if contains(raw{i,14},vecOfStates{1,Omega}) % Alabama
        count = count + 1;
        UN{count,1} = raw{i,5};
        NF(count,1) = raw{i,16};
    end
end
Vif = find(NF==max(NF));
%Conditions for most followers.
if length(Vif)==1   %need to do that @ thing here || i can do it at the end.
    str = sprintf('@%s',UN{Vif,1});
    UN_NF{Omega,1} = str;
elseif length(Vif) > 1 %need to do that (n) thing here.
    str = sprintf('@%s(%d)',UN{Vif(1),1},length(Vif));
    UN_NF{Omega,1} = str;
elseif isempty(Vif)==0
    UN_NF{Omega,1} = 'None';
    %Maine is apperently desolate.
end
end

UN_NF = UN_NF';

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
%Get the coordinates for every state
lat = [states.LabelLat];
lon = [states.LabelLon];
%select the states that require text
%tf = ingeoquad(lat, lon, latlim, lonlim);

%The next part is going to be your job. The example that we have created
%puts the words '#TEXT' over every state. This is achieved by creating the
%variable 'hashtag'. This is a 49x1 cell array where the contents of every
%element are text. In your case, you will want the text to correspond with
%the most popular hash tag for that state. Once again, the number of rows
%is not a coincidence. Notice how they correspond with the structure
%variable, 'states

%This line just plots the text on the map axis.
textm(lat, lon, UN_NF, ...
   'HorizontalAlignment', 'center')
%}
