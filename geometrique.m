function [ x ] = geometrique(k)

global p;

if (k > 0)
    x = p * (1-p)^(k-1);
else
    x=0;
end
return;

end

