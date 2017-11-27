function [ somme ] = suminf_revenu(i, fun, fun_pour_somme, lambda)
%Approximation de la somme qui va de i à l'infini de lambda fois
% 
%% EN ENTREE
% 
%% VARIABLES LOCALES
% r : (vecteur de S+1 lignes) 
%% EN SORTIE
 
%% DEBUT DE LA FONCTION

eps = 10^(-6);
maxiter = 10000;
somme = 0;
resultat_func = 1;
while (i <= maxiter &&  resultat_func>eps) 
    resultat_func = feval(fun_pour_somme, fun , lambda, i );
    somme = somme + resultat_func;
end
 

end
