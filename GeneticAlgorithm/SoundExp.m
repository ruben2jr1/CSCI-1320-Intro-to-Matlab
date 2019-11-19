%load in file for experimentation.
load gong.mat
%Someexperimenting.
%{
Question is why when plotting does the graph have
negative values and positive values?
%}
PosInd = y>0;
NegInd = y<0;
%y3 is exeperimenting with mx2 matrix
y3 = zeros(length(y),2);
y3(PosInd,1) = y(y>0);
y3(NegInd,2) = y(y<0);

%plotting with x. Number of element vary.
x = 1:length(y);

%plotting the graphs.
subplot(1,3,1);
plot(x,y);

subplot(1,3,2);
plot(x,y3);

%testing the sounds.
%sound(y)
%sound(y3(:,1),Fs)
%sound(y3(:,2),Fs);
%sound(y3);

y4 = sin((2*pi/length(x)).*x);
subplot(1,3,3);
plot(x,y4);
sound(y4);
