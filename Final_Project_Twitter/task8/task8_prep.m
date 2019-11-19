%task8_prep
%first we read in the data
 load('raw.mat')
 raw = Raw;
 [r,c] = size(raw);
%We now have to seperate the data into bins.
%the size of the bins depends on the size 
%of the raw file:
VoV = floor(linspace(r,2,61));
%For Image X:
for Omega = 1:60     %            %
    FIX = cell(VoV(Omega)-VoV(Omega+1),20);
    k = 0;      %         %
    for i = VoV(Omega):-1:VoV(Omega+1)
        k = k + 1;
        for j = 1:20
            FIX{k,j} = raw{i,j};
        end
    end
    str = sprintf('FI%d.mat',Omega);
    save(str,'FIX');
end
%Unnecessary
% load('FI1.mat');
% FI1 = FIX;
% save('FI1.mat','FI1');
% 
% load('FI2.mat');
% FI2 = FIX;
% save('FI2.mat','FI2');
% 
% load('FI3.mat');
% FI3 = FIX;
% save('FI3.mat','FI3');
% 
% load('FI4.mat');
% FI4 = FIX;%
% save('FI4.mat','FI4');
% 
% load('FI5.mat');
% FI5 = FIX;
% save('FI5.mat','FI5');
% 
% load('FI6.mat');
% FI6 = FIX;
% save('FI6.mat','FI6');
% 
% load('FI7.mat');
% FI7 = FIX;
% save('FI7.mat','FI7');
% 
% load('FI8.mat');
% FI8 = FIX;
% save('FI8.mat','FI8');
% 
% load('FI9.mat');
% FI9 = FIX;
% save('FI9.mat','FI9');
% 
% load('FI10.mat');
% FI10 = FIX;
% save('FI10.mat','FI10');
% 
% load('FI11.mat');
% FI11 = FIX;
% save('FI11.mat','FI11');
% 
% load('FI12.mat');
% FI12 = FIX;
% save('FI12.mat','FI12');
% 
% load('FI13.mat');
% FI13 = FIX;
% save('FI13.mat','FI13');
% 
% load('FI4.mat');
% FI14 = FIX;
% save('FI14.mat','FI14');
% 
% load('FI5.mat');
% FI15 = FIX;
% save('FI15.mat','FI15');
% 
% load('FI16.mat');
% FI16 = FIX;
% save('FI16.mat','FI16');
% 
% load('FI17.mat');
% FI17 = FIX;
% save('FI17.mat','FI17');
% 
% load('FI18.mat');
% FI18 = FIX;
% save('FI18.mat','FI18');
% 
% load('FI19.mat');
% FI19 = FIX;
% save('FI19.mat','FI19');
% 
% load('FI20.mat');
% FI20 = FIX;
% save('FI20.mat','FI20');
% 
% load('FI21.mat');
% FI21 = FIX;
% save('FI21.mat','FI21');
% 
% load('FI22.mat');
% FI22 = FIX;
% save('FI22.mat','FI22');
% 
% load('FI23.mat');
% FI23 = FIX;
% save('FI23.mat','FI23');
% 
% load('FI24.mat');
% FI24 = FIX;
% save('FI24.mat','FI24');
% 
% load('FI25.mat');
% FI25 = FIX;
% save('FI25.mat','FI25');
% 
% load('FI26.mat');
% FI26 = FIX;
% save('FI26.mat','FI26');
% 
% load('FI27.mat');
% FI27 = FIX;
% save('FI27.mat','FI27');
% 
% load('FI28.mat');
% FI28 = FIX;
% save('FI28.mat','FI28');
% 
% load('FI29.mat');
% FI29 = FIX;
% save('FI29.mat','FI2');
% 
% load('FI30.mat');
% FI30 = FIX;
% save('FI30.mat','FI30');
% 
% load('FI31.mat');
% FI31 = FIX;
% save('FI31.mat','FI31');
% 
% load('FI32.mat');
% FI32 = FIX;
% save('FI32.mat','FI32');
% 
% load('FI33.mat');
% FI33 = FIX;
% save('FI33.mat','FI33');
% 
% load('FI34.mat');
% FI34 = FIX;
% save('FI34.mat','FI34');
% 
% load('FI35.mat');
% FI35 = FIX;
% save('FI35.mat','FI35');
% 
% load('FI36.mat');
% FI36 = FIX;
% save('FI36.mat','FI36');
% 
% load('FI37.mat');
% FI37 = FIX;
% save('FI37.mat','FI37');
% 
% load('FI38.mat');
% FI38 = FIX;
% save('FI38.mat','FI38');
% 
% load('FI39.mat');
% FI39 = FIX;
% save('FI39.mat','FI39');
% 
% load('FI40.mat');
% FI40 = FIX;
% save('FI40.mat','FI40');
% 
% load('FI41.mat');
% FI41 = FIX;
% save('FI41.mat','FI41');
% 
% load('FI42.mat');
% FI42 = FIX;
% save('FI42.mat','FI42');
% 
% load('FI43.mat');
% FI43 = FIX;
% save('FI43.mat','FI43');

% load('FI44.mat');
% FI44 = FIX;
% save('FI44.mat','FI44');
% 
% load('FI45.mat');
% FI45 = FIX;
% save('FI45.mat','FI45');
% 
% load('FI46.mat');
% FI46 = FIX;
% save('FI46.mat','FI46');
% 
% load('FI47.mat');
% FI47 = FIX;
% save('FI47.mat','FI47');
% 
% load('FI48.mat');
% FI48 = FIX;
% save('FI48.mat','FI48');
% 
% load('FI49.mat');
% FI49 = FIX;
% save('FI49.mat','FI49');
% 
% load('FI50.mat');
% FI50 = FIX;
% save('FI50.mat','FI50');
% 
% load('FI51.mat');
% FI51 = FIX;
% save('FI51.mat','FI51');
% 
% load('FI52.mat');
% FI52 = FIX;
% save('FI52.mat','FI52');
% 
% load('FI53.mat');
% FI53 = FIX;
% save('FI53.mat','FI53');
% 
% load('FI54.mat');
% FI54 = FIX;
% save('FI54.mat','FI54');
% 
% load('FI55.mat');
% FI55 = FIX;
% save('FI55.mat','FI55');
% 
% load('FI56.mat');
% FI56 = FIX;
% save('FI56.mat','FI56');
% 
% load('FI57.mat');
% FI57 = FIX;
% save('FI57.mat','FI57');
% 
% load('FI58.mat');
% FI58 = FIX;
% save('FI58.mat','FI58');
% 
% load('FI59.mat');
% FI59 = FIX;
% save('FI59.mat','FI59');
% 
% load('FI60.mat');
% FI60 = FIX;
% save('FI60.mat','FI60');