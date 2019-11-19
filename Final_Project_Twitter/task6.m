% Ruben Hinojosa Torres, Jianai Zhao, CSCI 1320
%==========================================================================
load('raw.mat');
raw = Raw;
clear Raw
[r1,~,~] = size(raw);

%Greatest number of tweets in state.
%max task3(Filename,Row where the data starts (tweets), Column where the
%states are)
[~,Max,~] = task3(raw,2,14);

%Matrix of Tweets.
%MT = matrix_of_tweets(filename,Max from above, column where the states
%are, column where the tweets are.)
MT = matrix_of_tweets(raw,Max,14,8);
[r,c,~] = size(MT);
%__________________________________________________________________________
%==========================================================================
%Trailing Blank...
%So that the next function can work properly.
for i = 1:r
    for j = 1:c
        MT{i,j} = trailBlank(MT{i,j});
    end
end
for i = 2:r1
    raw{i,8} = trailBlank(raw{i,8});
end
%__________________________________________________________________________
%Greatest number of hashtags.
%finding thrid dimension in preperation for
%reshape to get matrix of hashtags MH
greatest_vec = zeros(1,(r1-1));
for j = 2:r1
    greatest_vec(1,j-1) = length(findHashtags(raw{j,8}));
end
clear raw i j r1
p = max(greatest_vec);
%__________________________________________________________________________
MH = cell(r,c,p);
for i = 1:r
    for j = 1:c
        if ~isempty(MT{i,j})
            HS = findHashtags(MT{i,j});
            for k = 1:length(HS)
            MH{i,j,k} = HS(1,k);
            end
        else
            MH{i,j,:} = [];
        end
    end
end
clear MT HS greatest_vec i j k Max 
MH = reshape(MH, [r,c*p]);
%{
We now have a MAtrix with all hashtags
in their respective states.
%}
%__________________________________________________________________________%  25,8
%lower case all
for ib = 1:r
    for jb = 1:c*p
            if ~isempty(MH{ib,jb})
                MH{ib,jb} = lower(MH{ib,jb});
            end
    end
end
%__________________________________________________________________________

%Here I am trimming all the empty
%spaces of the matrix of hashatgs.
MH_temp = cell(r,c*p);
for ib = 1:r
    k = 0;
    for jb = 1:c*p
        if ~isempty(MH{ib,jb})
            k = k + 1;
            MH_temp{ib,k} = MH{ib,jb};
        end
    end
end
clear MH
%//////////////////////////////////////////////////////////////////////////
%creating vector of times hashtags used.

VX_count = uint8(zeros(49,c*p));

V1 = makeVectorC(MH_temp,1);
cX = length(V1);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX        %       %
        count = count + uint8(contains(V1{1,k},V1{1,jb}));
    end      %
    VX_count(1,jb) = count;
end

V2 = makeVectorC(MH_temp,2);
cX = length(V2);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX 
        count = count + uint8(contains(V2{1,k},V2{1,jb}));
    end      %
    VX_count(2,jb) = count;
end

V3 = makeVectorC(MH_temp,3);
cX = length(V3);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V3{1,k},V3{1,jb}));
    end      %
    VX_count(3,jb) = count;
end

V4 = makeVectorC(MH_temp,4);
cX = length(V4);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V4{1,k},V4{1,jb}));
    end      %
    VX_count(4,jb) = count;
end

V5 = makeVectorC(MH_temp,5);
cX = length(V5);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V5{1,k},V5{1,jb}));
    end      %
    VX_count(5,jb) = count;
end

V6 = makeVectorC(MH_temp,6);
cX = length(V6);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V6{1,k},V6{1,jb}));
    end      %
    VX_count(6,jb) = count;
end

V7 = makeVectorC(MH_temp,7);
cX = length(V7);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V7{1,k},V7{1,jb}));
    end      %
    VX_count(7,jb) = count;
end

V8 = makeVectorC(MH_temp,8);
cX = length(V8);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V8{1,k},V8{1,jb}));
    end      %
    VX_count(8,jb) = count;
end

V9 = makeVectorC(MH_temp,9);
cX = length(V9);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V9{1,k},V9{1,jb}));
    end      %
    VX_count(9,jb) = count;
end

V10 = makeVectorC(MH_temp,10);%
cX = length(V10);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V10{1,k},V10{1,jb}));
    end      %
    VX_count(10,jb) = count;
end

V11 = makeVectorC(MH_temp,11);%
cX = length(V11);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V11{1,k},V11{1,jb}));
    end      %
    VX_count(11,jb) = count;
end

V12 = makeVectorC(MH_temp,12);
cX = length(V12);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       
        count = count + uint8(contains(V12{1,k},V12{1,jb}));
    end      %
    VX_count(12,jb) = count;
end

V13 = makeVectorC(MH_temp,13);
cX = length(V13);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V13{1,k},V13{1,jb}));
    end      %
    VX_count(13,jb) = count;
end

V14 = makeVectorC(MH_temp,14);
cX = length(V14);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V14{1,k},V14{1,jb}));
    end      %
    VX_count(14,jb) = count;
end

V15 = makeVectorC(MH_temp,15);
cX = length(V15);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V15{1,k},V15{1,jb}));
    end      %
    VX_count(15,jb) = count;
end

V16 = makeVectorC(MH_temp,16);
cX = length(V16);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V16{1,k},V16{1,jb}));
    end      %
    VX_count(16,jb) = count;
end

V17 = makeVectorC(MH_temp,17);
cX = length(V17);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V17{1,k},V17{1,jb}));
    end      %
    VX_count(17,jb) = count;
end

V18 = makeVectorC(MH_temp,18);
cX = length(V18);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V18{1,k},V18{1,jb}));
    end      %
    VX_count(18,jb) = count;
end

V19 = makeVectorC(MH_temp,19);
cX = length(V19);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V19{1,k},V19{1,jb}));
    end      %
    VX_count(19,jb) = count;
end

V20 = makeVectorC(MH_temp,20);%
cX = length(V20);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V20{1,k},V20{1,jb}));
    end      %
    VX_count(20,jb) = count;
end

V21 = makeVectorC(MH_temp,21);%
cX = length(V21);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V21{1,k},V21{1,jb}));
    end      %
    VX_count(21,jb) = count;
end

V22 = makeVectorC(MH_temp,22);
cX = length(V22);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V22{1,k},V22{1,jb}));
    end      %
    VX_count(22,jb) = count;
end

V23 = makeVectorC(MH_temp,23);
cX = length(V23);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V23{1,k},V23{1,jb}));
    end      %
    VX_count(23,jb) = count;
end

V24 = makeVectorC(MH_temp,24);
cX = length(V24);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V24{1,k},V24{1,jb}));
    end      %
    VX_count(24,jb) = count;
end

V25 = makeVectorC(MH_temp,25);
cX = length(V25);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V25{1,k},V25{1,jb}));
    end      %
    VX_count(25,jb) = count;
end

V26 = makeVectorC(MH_temp,26);
cX = length(V26);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V26{1,k},V26{1,jb}));
    end      %
    VX_count(26,jb) = count;
end

V27 = makeVectorC(MH_temp,27);
cX = length(V27);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V27{1,k},V27{1,jb}));
    end      %
    VX_count(27,jb) = count;
end

V28 = makeVectorC(MH_temp,28);
cX = length(V28);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V28{1,k},V28{1,jb}));
    end      %
    VX_count(28,jb) = count;
end

V29 = makeVectorC(MH_temp,29);
cX = length(V29);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       
        count = count + uint8(contains(V29{1,k},V29{1,jb}));
    end      %
    VX_count(29,jb) = count;
end

V30 = makeVectorC(MH_temp,30);%
cX = length(V30);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V30{1,k},V30{1,jb}));
    end      %
    VX_count(30,jb) = count;
end

V31 = makeVectorC(MH_temp,31);%
cX = length(V31);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V31{1,k},V31{1,jb}));
    end      %
    VX_count(31,jb) = count;
end

V32 = makeVectorC(MH_temp,32);
cX = length(V32);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V32{1,k},V32{1,jb}));
    end      %
    VX_count(32,jb) = count;
end

V33 = makeVectorC(MH_temp,33);
cX = length(V33);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V33{1,k},V33{1,jb}));
    end      %
    VX_count(33,jb) = count;
end

V34 = makeVectorC(MH_temp,34);
cX = length(V34);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V34{1,k},V34{1,jb}));
    end      %
    VX_count(34,jb) = count;
end

V35 = makeVectorC(MH_temp,35);
cX = length(V35);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V35{1,k},V35{1,jb}));
    end      %
    VX_count(35,jb) = count;
end

V36 = makeVectorC(MH_temp,36);
cX = length(V36);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V36{1,k},V36{1,jb}));
    end      %
    VX_count(36,jb) = count;
end

V37 = makeVectorC(MH_temp,37);
cX = length(V37);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V37{1,k},V37{1,jb}));
    end      %
    VX_count(37,jb) = count;
end

V38 = makeVectorC(MH_temp,38);
cX = length(V38);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V38{1,k},V38{1,jb}));
    end      %
    VX_count(38,jb) = count;
end

V39 = makeVectorC(MH_temp,39);
cX = length(V39);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V39{1,k},V39{1,jb}));
    end      %
    VX_count(39,jb) = count;
end

V40 = makeVectorC(MH_temp,40);%
cX = length(V40);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V40{1,k},V40{1,jb}));
    end      %
    VX_count(40,jb) = count;
end

V41 = makeVectorC(MH_temp,41);%
cX = length(V41);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V41{1,k},V41{1,jb}));
    end      %
    VX_count(41,jb) = count;
end

V42 = makeVectorC(MH_temp,42);
cX = length(V42);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V42{1,k},V42{1,jb}));
    end      %
    VX_count(42,jb) = count;
end

V43 = makeVectorC(MH_temp,43);
cX = length(V43);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V43{1,k},V43{1,jb}));
    end      %
    VX_count(43,jb) = count;
end

V44 = makeVectorC(MH_temp,44);
cX = length(V44);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V44{1,k},V44{1,jb}));
    end      %
    VX_count(44,jb) = count;
end

V45 = makeVectorC(MH_temp,45);
cX = length(V45);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V45{1,k},V45{1,jb}));
    end      %
    VX_count(45,jb) = count;
end

V46 = makeVectorC(MH_temp,46);
cX = length(V46);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V46{1,k},V46{1,jb}));
    end      %
    VX_count(46,jb) = count;
end

V47 = makeVectorC(MH_temp,47);
cX = length(V47);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V47{1,k},V47{1,jb}));
    end      %
    VX_count(47,jb) = count;
end

V48 = makeVectorC(MH_temp,48);
cX = length(V48);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V48{1,k},V48{1,jb}));
    end      %
    VX_count(48,jb) = count;
end

V49 = makeVectorC(MH_temp,49);
cX = length(V49);
for jb = 1:cX
    count = uint8(0);
    for k = 1:cX     %                       %
        count = count + uint8(contains(V49{1,k},V49{1,jb}));
    end      %
    VX_count(49,jb) = count;
end
%{
We know have a matrix of all 
the times a specific # was used.
- uint8 == 74529 bytes
- doubles == 596232 bytes
%}
clear count ib jb k p V1 V2 V3 V4 V5 V6 V7 V8 V9 V10
clear V11 V12 V13 V14 V15 V16 V17 V18 V19 V20 
clear V21 V22 V23 V24 V25 V26 V27 V28 V29 V30
clear V31 V32 V33 V34 V35 V36 V37 V38 V39 V40
clear V41 V42 V43 V44 V45 V46 V47 V48 V49 cX
%__________________________________________________________________________
MH_final = cell(1,r);
for i = 1:r
    MH_final{1,i} = MH_temp{i,find(VX_count(i,:) == max(VX_count(i,:)),1)};
end
%{
We know have a vector of most popular 
hashtags for each state.
%}
clear c i MH_temp r %VX_count
%__________________________________________________________________________
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
textm(lat, lon, MH_final, ...
   'HorizontalAlignment', 'center')
%}
