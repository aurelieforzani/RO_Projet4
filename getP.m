function P = getP(S,s,fun)


P = zeros(S+1,S+1);
% Parcourir les états Xn
for i=0:S
    if (i>=s)
        for j = 0:S
            if (j==0)
                P(i+1,j+1) = sumInfProba(fun,i);
            elseif (j>i)
                P(i+1,j+1) = 0;
            else
                P(i+1,j+1) = feval(fun,i-j);
            end
        end;
    else
        for j = 0:S
            if (j==0)
                P(i+1,1) = sumInfProba(fun,S);
            else
                P(i+1,j+1) = feval(fun,S-j);
            end
        end
    end;
end;
