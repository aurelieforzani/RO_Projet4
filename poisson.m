function [x] = poisson(lambda,k)

x = (exp(-lambda)*lambda^(k))/(factorial(k));
return;

end