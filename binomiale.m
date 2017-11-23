function [x] = binomiale(p,k,n)

x = nchoosek(n,k)*p^k*(1-p)^(n-k);
return;

end