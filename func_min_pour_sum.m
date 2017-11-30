function [ res ] = func_min_pour_sum(fun, S, k)
% fonction auxilliare qui peut être sommée dans suminf_revenu
%% EN ENTREE
% fun : String, nom de la fonction de probabilité
% S : int, nombre max d'article en stock
% k : int, indice de la somme (suminf_revenu)
%% EN SORTIE
 % res : float, resultat de la fonction
%% DEBUT DE LA FONCTION
res = feval(fun,k) * min(S, k);
end
