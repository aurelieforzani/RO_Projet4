function res = unif(k)
N = 100;
if (k <= 0)
    res = 0;
elseif (k <= N)
    res = 1/N;
else
    res = 0;
end;