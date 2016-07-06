function fourier_spectrum
X=[5,32,38,-33,-19,-10,1,-8,-20,10,-1,4,11,-1,-7,-2];
T=0.5*((1:16)-1);
FRQ=0.125*((1:16)-1);
XF=ifft(X,16);
% XF=XF';
subplot(2,2,1);
stem(FRQ,XF);
subplot(2,2,e2);
stem(FRQ,abs(XF));
subplot(2,2,3);
stem(FRQ,XF');
subplot(2,2,4);
stem(FRQ,abs(XF)');
% subplot(2,1,1);
% plot(T,X);
% xlabel('Time sec');
% ylabel('x(t)');
% title('Time history');
% subplot(2,1,2);
% stem(FRQ,abs(XF));
% %bar(abs(XF));
% xlabel('Frequency Hz');
% ylabel('abs(c_n)');
% title('Fourie Spectrume');
end
