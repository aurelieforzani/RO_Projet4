function res = gaus(k)
% renvoie la probabilité que qu'il y ait k articles de vendus pendant la
% semaine selon la loi de gauss 
%% EN ENTREE
% k : int
%% EN SORTIE
% x : float, probabilité (entre 0 et 1)
%% DEBUT DE LA FONCTION
mu = 3;
sigma = 1;
res = normpdf(k,mu,sigma);