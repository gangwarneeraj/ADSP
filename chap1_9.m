%Adaptive Filter Theory, Simon Haykin
% Chapter 1
% Section 1.9
% Neeraj Gangwar

%white noise process
v = 0.2*randn(1200, 1);

%AR Process I
A1 = [1, -0.10, -0.8];
B1 = 1;
y1 = filter(B1, A1, v);
ar1_corr = xcorr(y1, 100, 'coeff');

%AR Process II
A2 = [1, 0.1, -0.8];
B2 = 1;
y2 = filter(B2, A2, v);
ar2_corr = xcorr(y2, 100, 'coeff');

%AR Process III
A3 = [1, -0.975, 0.95];
B3 = 1;
y3 = filter(B3, A3, v);
ar3_corr = xcorr(y3, 100, 'coeff');

%plot the processes
subplot(4, 1, 1);
plot(v);
title('White Noise');

subplot(4, 1, 2);
plot(y1);
title('AR Process I');

subplot(4, 1, 3);
plot(y2);
title('AR Process II');

subplot(4, 1, 4);
plot(y3);
title('AR Process III');

figure(2);
subplot(3, 1, 1);
stem(ar1_corr);
title('Autocorrelation of AR Process I');
xlabel('Lag');
ylabel('Correlation coefficient');

subplot(3, 1, 2);
stem(ar2_corr);
title('Autocorrelation of AR Process II');
xlabel('Lag');
ylabel('Correlation coefficient');

subplot(3, 1, 3);
stem(ar3_corr);
title('Autocorrelation of AR Process III');
xlabel('Lag');
ylabel('Correlation coefficient');