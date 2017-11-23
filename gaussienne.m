function [x] = gaussienne(k)

global theta;
global mu;

if (k >= 0)
    x = (1/(theta*sqrt(2*pi))) * (exp((-1/2)*((k-mu)/theta)^2));
else 
    x=0;
end
return;

end