%Example for importing data and plotting it
%Import the data as the variable x to use it in simulink
%Make sure to change directory and use whatever your file is named
x = importdata('data1_2.txt');

x = x(:,2);
%get only a portion of the data
x = x(1024*3000+1:1024*6000);
step = 2e-6;
t = 0:step:(size(x)-1)*step;
plot(t,x)

%ignore this
%{
y = fft(x);
mag = abs(y);
phase = angle(y);
fs = 1/step;
f = (0:length(y)-1)*fs/length(y);

plot(f, mag)
%}