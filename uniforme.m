function [x] = uniforme(k)

global n;

if ( 0 <= k && k <= n)
    x = 1/n;
else
    x = 0;
end
return;

end