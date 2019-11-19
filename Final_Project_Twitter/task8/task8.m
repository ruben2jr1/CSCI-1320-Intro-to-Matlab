%Task 8
% for i = 1:60
%     str = sprintf('FI%d.mat',i);
%     Filename = str;
%     task5Func(Filename);
% end

FI1 = imread('FI1.jpg');
FI2 = imread('FI2.jpg');
FI3 = imread('FI3.jpg');
FI4 = imread('FI4.jpg');
FI5 = imread('FI5.jpg');
FI6 = imread('FI6.jpg');
FI7 = imread('FI7.jpg');
FI8 = imread('FI8.jpg');
FI9 = imread('FI9.jpg');
FI10 = imread('FI10.jpg');
FI11 = imread('FI11.jpg');
FI12 = imread('FI12.jpg');
FI13 = imread('FI13.jpg');
FI14 = imread('FI14.jpg');
FI15 = imread('FI15.jpg');
FI16 = imread('FI16.jpg');
FI17 = imread('FI17.jpg');
FI18 = imread('FI18.jpg');
FI19 = imread('FI19.jpg');
FI20 = imread('FI20.jpg');
FI21 = imread('FI21.jpg');
FI22 = imread('FI22.jpg');
FI23 = imread('FI23.jpg');
FI24 = imread('FI24.jpg');
FI25 = imread('FI25.jpg');
FI26 = imread('FI26.jpg');
FI27 = imread('FI27.jpg');
FI28 = imread('FI28.jpg');
FI29 = imread('FI29.jpg');
FI30 = imread('FI30.jpg');
FI31 = imread('FI31.jpg');
FI32 = imread('FI32.jpg');
FI33 = imread('FI33.jpg');
FI34 = imread('FI34.jpg');
FI35 = imread('FI35.jpg');
FI36 = imread('FI36.jpg');
FI37 = imread('FI37.jpg');
FI38 = imread('FI38.jpg');
FI39 = imread('FI39.jpg');
FI40 = imread('FI40.jpg');
FI41 = imread('FI41.jpg');
FI42 = imread('FI42.jpg');
FI43 = imread('FI43.jpg');
FI44 = imread('FI44.jpg');
FI45 = imread('FI45.jpg');
FI46 = imread('FI46.jpg');
FI47 = imread('FI47.jpg');
FI48 = imread('FI48.jpg');
FI49 = imread('FI49.jpg');
FI50 = imread('FI50.jpg');
FI51 = imread('FI51.jpg');
FI52 = imread('FI52.jpg');
FI53 = imread('FI53.jpg');
FI54 = imread('FI54.jpg');
FI55 = imread('FI55.jpg');
FI56 = imread('FI56.jpg');
FI57 = imread('FI57.jpg');
FI58 = imread('FI58.jpg');
FI59 = imread('FI59.jpg');
FI60 = imread('FI60.jpg'); ...

M = cat(4,FI1,FI2,FI3,FI4,FI5,FI6,FI7,FI8,FI8,FI9,FI10,...
    FI11,FI12,FI13,FI14,FI15,FI16,FI17,FI18,FI19,FI20,...
    FI21,FI22,FI23,FI24,FI25,FI26,FI27,FI28,FI29,FI30,...
    FI31,FI32,FI33,FI34,FI35,FI36,FI37,FI38,FI39,FI40,...
    FI41,FI42,FI43,FI44,FI45,FI46,FI47,FI48,FI49,FI50,...
    FI51,FI52,FI53,FI54,FI55,FI56,FI57,FI58,FI59,FI60);
M1 = immovie(M);
implay(M1,10);