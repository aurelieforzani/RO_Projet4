function [x] = binomiale(k)

global n;
global p;

if (k >= 0 && k <= n)
    x = nchoosek(n,k)*p^k*(1-p)^(n-k);
else
    x=0;
end
return;

end