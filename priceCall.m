% This function evaluates the arbitrage-free price of a European call option in the Binomial tree model
% INPUTS
% S0 : stock price at time 0 
% u : up factor 
% d : down factor 
% T : number of periods 
% r : interest rate (per period) 
% K : strike price of the call 
% OUTPUT 
% y : price of the call at time zero

function y = priceCall(S0,u,d,T,r,K)
p = (1-r-d)/(u-d);
q = 1-p;

S = zeros(T); 
for i = 1:T+1 %exponent for upfactor
    for j = 1:T+1 %exponent for downfactor
        S(i,j) = (S0)*(u^(j-1)*(d^(i-1))); %matrix of bin tree
    end
end

Strike = zeros(T);
for i = 1:T+1
    for j = 1:T+1 
        Strike(i,j) = max(S(i,j)-K, 0); %matrix of value of call options
    end
end
S = fliplr(S);
V = fliplr(Strike);

for i = 1:T
 Sn = diag(S,i);
end






