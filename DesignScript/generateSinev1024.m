clc;
clear;
clear all;
N     =  1024;
n     =  (0:1:N-1);
fs    =  400000;
%f1    =  20000;
%f2    =  10000; %okay
%f2    =  20000; %okay
f1    =  20000;
f2    =  90000;
t     =  (0:1:N-1)*1/fs;
x     =   1*sin(2*pi*(f1/fs)*n)+1*sin(2*pi*(f2/fs)*n);
%x     =   1*sin(2*pi*(f2/fs)*n);
xINT  =   floor(2^8*x);
subplot(3,1,1);
stem(t,x);
y     =   fft(x);
yAbs  =   abs(y);
f     =   (0:1:N-1)*fs/N;
subplot(3,1,2);
stem(f,y);
subplot(3,1,3);
stem(f,imag(y));

x;
xINT
y;