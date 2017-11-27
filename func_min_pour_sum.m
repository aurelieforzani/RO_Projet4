function [ res ] = func_min_pour_sum(fun, S, k)

%Approximation de la somme qui va de i à l'infini de lambda fois
% 
%% EN ENTREE
% 
%% VARIABLES LOCALES
% r : (vecteur de S+1 lignes) 
%% EN SORTIE
 
%% DEBUT DE LA FONCTION

res = feval(fun,k) * min(S, k);
  
 




end
