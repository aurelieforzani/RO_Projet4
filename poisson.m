function [x] = poisson(k)

global lambda;

if ( k >= 0)
    x = (exp(-lambda)*lambda^(k))/(factorial(k));
else 
    x=0;
end
return;

end
