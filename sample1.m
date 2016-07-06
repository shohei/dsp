function sample1

clear;
n=-4:6;
dlt = [zeros(1,4) 1 zeros(1,6)];
u0 = [zeros(1,4) ones(1,7)];
r = [zeros(1,4) (0:6)];
alpha = 0.5;
a = [zeros(1,4) alpha.^(0:6)];

subplot(221); 
stem(n,dlt);
xlabel('time n');
ylabel('unit impulse');

subplot(222);
stem(n,u0)
xlabel('time n');
ylabel('unit step');

subplot(223);
stem(n,r);
xlabel('time n');
ylabel('ramp');

subplot(224);
stem(n,a);
xlabel('time n');
ylabel('exponential');

% unitimp(n)
% x= n==0;






end