function test1

clear all; close all;
% load handel.mat;
% y, Fs
% plot(y);
% 
% t=0:0.1:10;
% s=tf('s');
% G=1/(s+1);


load gong.mat;
ygong=y;
Fgong=Fs;

load laughter.mat;
ylaugh=y;
Flaugh=Fs;

load handel.mat;
yhandel = y;
Fhandel=Fs;

% wgl=conv(ygong,ylaugh);
% wlg=conv(ylaugh,ygong);

whg=conv(yhandel,0.001*ygong);
soundsc(whg);

% whl=conv(yhandel,ylaugh);


% subplot(221);
% plot(ygong);
% subplot(223);
% plot(ylaugh);
% 
% subplot(222);
% plot(wgl);
% subplot(224);
% plot(wlg);
% 
% disp 'halt';

end