x = linspace(50,150,1000); %domain
K = 100; %strike price
r = 0.01; %rate
tau = 1; %time
sigma = 0.3 %sd/volitiliaty

%BlackScholes Sensitivity to Price Change
[callDelta, putDelta] = blsdelta(x, K, r, tau, sigma);
gamma = blsgamma(x, 100, r, tau, sigma);
theta = blstheta(x, 100, r, tau, sigma);

figure(1)
plot(x,callDelta)
title('Call vs Stock Price');

figure(2)
plot(x,gamma)
title('Gamma vs Stock Price');

figure(3)
plot(x,theta)
title('Theta vs Stock Price');