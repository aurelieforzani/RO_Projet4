function res = sumInfProba(fun,i)

res = 0;
eps = 10^(-5);
maxiter = 1000;
ind = i;
while ((feval(fun,ind) > eps) && (ind < maxiter))
    res = res + feval(fun,ind)
    ind = ind + 1;
end