function [x] = binomiale(k)
% renvoie la probabilité que qu'il y ait k articles de vendus pendant la
% semaine selon la loi binomiale
%% EN ENTREE
% k : int
%% EN SORTIE
% x : float, probabilité (entre 0 et 1)
%% DEBUT DE LA FONCTION
global n;
global p;

if (k >= 0 && k <= n)
    x = nchoosek(n,k)*p^k*(1-p)^(n-k);
else
    x=0;
end
return;

end