function lowpass_test

clear all;
close all;

%%


SCREENSHOT = true;

wp = 0.05*pi;
ws = 0.2*pi;

trwidth = ws-wp;
alpha = 6.0;
N = 39;
wc = (wp+ws)/2;
h = fir1(N-1,wc/pi,kaiser(N,alpha));
n = -(N-1)/2:(N-1)/2;

f = randn(1,200);

subplot(211);
plot(f);

subplot(212);
plot(conv(h,f));

% subplot(211);
% stem(n,h);
% axis([-(N-1)/2 (N-1)/2 -0.2 0.6]);
% grid;
% xlabel('Time n ');
% ylabel('h(n)');
% w = linspace(0,pi,2^12);
% dw = w(2) - w(1);
% H = freqz(h,1,w);
% magH  = abs(H);
% maxH = max(magH);
% dBH = 20*log10(magH/maxH);
% subplot(212);
% plot(w,dBH);
% axis([0 pi -80 5]);
% grid ;
% xlabel('Frequency');
% ylabel('H')
% Rp = -min(dBH(1:ceil(wp/dw)+1))
% As = -max(dBH(ceil(ws/dw)+1:length(w)))

if(SCREENSHOT)
    fig = gcf;
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 6 3];
    fig.PaperPositionMode = 'manual';
    print('window_method.png','-dpng');
end
    

end