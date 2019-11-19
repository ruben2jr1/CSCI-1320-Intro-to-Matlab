%Read in Cleaned File
load('raw.mat');
raw = Raw;
clear Raw
[r,c,~] = size(raw);

%Concatenate
followers = zeros(49,1);
countN = zeros(49,1);

count = 0;
for i = 2:r
    if contains(raw{i,14},'AL') % Alabama
        count = count + raw{i,16};
        countN(1,1) = countN(1,1) + 1;
    end
end
followers(1,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'AZ') % Arizona
        count = count + raw{i,16};
        countN(2,1) = countN(2,1) + 1;
    end
end
followers(2,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'AR') % Arkansas
        count = count + raw{i,16};
        countN(3,1) = countN(3,1) + 1;
    end
end
followers(3,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'CA') % California
        count = count + raw{i,16};
        countN(4,1) = countN(4,1) + 1;
    end
end
followers(4,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'CO') % Colorado
        count = count + raw{i,16};
        countN(5,1) = countN(5,1) + 1;
    end
end
followers(5,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'CT') % Connecticut
        count = count + raw{i,16};
        countN(6,1) = countN(6,1) + 1;
    end
end
followers(6,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'DE') % Delaware
        count = count + raw{i,16};
        countN(7,1) = countN(7,1) + 1;
    end
end
followers(7,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'FL') % Florida
        count = count + raw{i,16};
        countN(8,1) = countN(8,1) + 1;
    end
end
followers(8,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'GA') % Georgia
        count = count + raw{i,16};
        countN(9,1) = countN(9,1) + 1;
    end
end
followers(9,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'ID') % Idaho
        count = count + raw{i,16};
        countN(10,1) = countN(10,1) + 1;
    end
end
followers(10,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'IL') % Illinois
        count = count + raw{i,16};
        countN(11,1) = countN(11,1) + 1;
    end
end
followers(11,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'IN') % Indiana
        count = count + raw{i,16};
        countN(12,1) = countN(12,1) + 1;
    end
end
followers(12,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'IA') % Iowa
        count = count + raw{i,16};
        countN(13,1) = countN(13,1) + 1;
    end
end
followers(13,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'KS') % Kansas
        count = count + raw{i,16};
        countN(14,1) = countN(14,1) + 1;
    end
end
followers(14,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'KY') % Kentucky
        count = count + raw{i,16};
        countN(15,1) = countN(15,1) + 1;
    end
end
followers(15,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'LA') % Louisiana
        count = count + raw{i,16};
        countN(16,1) = countN(16,1) + 1;
    end
end
followers(16,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'ME') % Maine
        count = count + raw{i,16};
        countN(17,1) = countN(17,1) + 1;
    end
end
followers(17,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MD') % Maryland
        count = count + raw{i,16};
        countN(18,1) = countN(18,1) + 1;
    end
end
followers(18,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MA') % Massachussets
        count = count + raw{i,16};
        countN(19,1) = countN(19,1) + 1;
    end
end
followers(19,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MI') % Michigan
        count = count + raw{i,16};
        countN(20,1) = countN(20,1) + 1;
    end
end
followers(20,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MN') % Minnesota
        count = count + raw{i,16};
        countN(21,1) = countN(21,1) + 1;
    end
end
followers(21,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MS') % Mississippi
        count = count + raw{i,16};
        countN(22,1) = countN(22,1) + 1;
    end
end
followers(22,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MO') % Missouri
        count = count + raw{i,16};
        countN(23,1) = countN(23,1) + 1;
    end
end
followers(23,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'MT') % Montana
        count = count + raw{i,16};
        countN(24,1) = countN(24,1) + 1;
    end
end
followers(24,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NE') % Nebraska
        count = count + raw{i,16};
        countN(25,1) = countN(25,1) + 1;
    end
end
followers(25,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NV') % Nevada
        count = count + raw{i,16};
        countN(26,1) = countN(26,1) + 1;
    end
end
followers(26,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NH') % New Hampshire
        count = count + raw{i,16};
        countN(27,1) = countN(27,1) + 1;
    end
end
followers(27,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NJ') % New Jersey
        count = count + raw{i,16};
        countN(28,1) = countN(28,1) + 1;
    end
end
followers(28,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NM') % New Mexico
        count = count + raw{i,16};
        countN(29,1) = countN(29,1) + 1;
    end
end
followers(29,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NY') % New York
        count = count + raw{i,16};
        countN(30,1) = countN(30,1) + 1;
    end
end
followers(30,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'NC') % North Carolina
        count = count + raw{i,16};
        countN(31,1) = countN(31,1) + 1;
    end
end
followers(31,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'ND') % North Dakota
        count = count + raw{i,16};
        countN(32,1) = countN(32,1) + 1;
    end
end
followers(32,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'OH') % Ohio
        count = count + raw{i,16};
        countN(33,1) = countN(33,1) + 1;
    end
end
followers(33,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'OK') % Oklahoma
        count = count + raw{i,16};
        countN(34,1) = countN(34,1) + 1;
    end
end
followers(34,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'OR') % Oregon
        count = count + raw{i,16};
        countN(35,1) = countN(35,1) + 1;
    end
end
followers(35,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'PA') % Pennsylvania
        count = count + raw{i,16};
        countN(36,1) = countN(36,1) + 1;
    end
end
followers(36,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'RI') % Rhode Island
        count = count + raw{i,16};
        countN(37,1) = countN(37,1) + 1;
    end
end
followers(37,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'SC') % South Carolina
        count = count + raw{i,16};
        countN(38,1) = countN(38,1) + 1;
    end
end
followers(38,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'SD') % South Dakota
        count = count + raw{i,16};
        countN(39,1) = countN(39,1) + 1;
    end
end
followers(39,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'TN') % Tennessee
        count = count + raw{i,16};
        countN(40,1) = countN(40,1) + 1;
    end
end
followers(40,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'TX') % Texas
        count = count + raw{i,16};
        countN(41,1) = countN(41,1) + 1;
    end
end
followers(41,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'UT') % Utah
        count = count + raw{i,16};
        countN(42,1) = countN(42,1) + 1;
    end
end
followers(42,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'VT') % Vermont
        count = count + raw{i,16};
        countN(43,1) = countN(43,1) + 1;
    end
end
followers(43,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'VA') % Virginia
        count = count + raw{i,16};
        countN(44,1) = countN(44,1) + 1;
    end
end
followers(44,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'WA') % Washington
        count = count + raw{i,16};
        countN(45,1) = countN(45,1) + 1;
    end
end
followers(45,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'WV') % West Virginia
        count = count + raw{i,16};
        countN(46,1) = countN(46,1) + 1;
    end
end
followers(46,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'WI') % Wisconsin
        count = count + raw{i,16};
        countN(47,1) = countN(47,1) + 1;
    end
end
followers(47,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'WY') % Wyoming
        count = count + raw{i,16};
        countN(48,1) = countN(48,1) + 1;
    end
end
followers(48,1) = count;

count = 0;
for i = 2:r
    if contains(raw{i,14},'DC') % District of Columbia
        count = count + raw{i,16};
        countN(49,1) = countN(49,1) + 1;
    end
end
followers(49,1) = count;

followers = string(followers);
followers = followers';
followersC = cell(1,49);
for i = 1:49
    followersC{1,i} = followers(1,i);
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
textm(lat, lon, followersC, ...
   'HorizontalAlignment', 'center')
%}