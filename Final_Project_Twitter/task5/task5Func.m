function [] = task5Func(Filename)
%task 5
%The long way:
[V,Max,Min] = task3_adjusted(Filename);
close all
%subtract Min from each state's number of tweets.
V_temp = zeros(1,51);
V_temp(1,1:49) = V - Min;
V_temp = V_temp/Max;
%need to account for my vector versus given vector.
V_final(1,1) = V_temp(1,1 );
V_final(2,1) = V_temp(1,50 );%
V_final(3,1) = V_temp(1,2 );
V_final(4,1) = V_temp(1,3 );
V_final(5,1) = V_temp(1,4 );
V_final(6,1) = V_temp(1,5 );
V_final(7,1) = V_temp(1,6 );
V_final(8,1) = V_temp(1,7 );
V_final(9,1) = V_temp(1,8 );
V_final(10,1) = V_temp(1,9 );
V_final(11,1) = V_temp(1,51 );%
V_final(12,1) = V_temp(1,10 );
V_final(13,1) = V_temp(1,11 );
V_final(14,1) = V_temp(1,12 );
V_final(15,1) = V_temp(1,13 );
V_final(16,1) = V_temp(1,14 );
V_final(17,1) = V_temp(1,15 );
V_final(18,1) = V_temp(1,16 );
V_final(19,1) = V_temp(1,17 );
V_final(20,1) = V_temp(1,18 );
V_final(21,1) = V_temp(1,19 );
V_final(22,1) = V_temp(1,20 );
V_final(23,1) = V_temp(1,21 );
V_final(24,1) = V_temp(1,22 );
V_final(25,1) = V_temp(1,23 );
V_final(26,1) = V_temp(1,24 );
V_final(27,1) = V_temp(1,25 );
V_final(28,1) = V_temp(1,26 );
V_final(29,1) = V_temp(1,27 );
V_final(30,1) = V_temp(1,28 );
V_final(31,1) = V_temp(1,29 );
V_final(32,1) = V_temp(1,30 );
V_final(33,1) = V_temp(1,31 );
V_final(34,1) = V_temp(1,32 );
V_final(35,1) = V_temp(1,33 );
V_final(36,1) = V_temp(1,34 );
V_final(37,1) = V_temp(1,35 );
V_final(38,1) = V_temp(1,36 );
V_final(39,1) = V_temp(1,37 );
V_final(40,1) = V_temp(1,38 );
V_final(41,1) = V_temp(1,39 );
V_final(42,1) = V_temp(1,40 );
V_final(43,1) = V_temp(1,41 );
V_final(44,1) = V_temp(1,42 );
V_final(45,1) = V_temp(1,43 );
V_final(46,1) = V_temp(1,44 );
V_final(47,1) = V_temp(1,45 );
V_final(48,1) = V_temp(1,46 );
V_final(49,1) = V_temp(1,47 );
V_final(50,1) = V_temp(1,48 );
V_final(51,1) = V_temp(1,49 );
%__________________________________________________________________________
load('map.mat')
%{
Use the mask to index into the image. 
%}
usa_image = zeros(900,1200,3);
for i = 1:51
    for r = 1:900
        for c = 1:1200
            if state_mask(r,c) == i
                usa_image(r,c,:) = V_final(i,1);
            end
        end
    end
end
figure
imagesc(usa_image)
%==========================================================================
str = sprintf('%s',Filename);
[L] = strfind(str,'.');
strt = str(1:L(1)-1);
strf = sprintf('%s.jpg',strt);
%==========================================================================
imwrite(usa_image,strf);
end