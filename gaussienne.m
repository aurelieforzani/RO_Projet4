function [x] = gaussienne(theta,k,mu)

x = (1/(theta*sqrt(2*pi))) * (exp((-1/2)*((k-mu)/theta)^2));
return;

end