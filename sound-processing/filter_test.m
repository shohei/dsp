function filter_test

% load handel.mat;
load chirp;
yh=y;

% [yi,Fs] = audioread('dales_site1_1way_mono.wav');
[yi,Fs] = audioread('lyd3_000_ortf_48k.wav');

yc = conv(yh,yi(:,1));
soundsc(yc);


end