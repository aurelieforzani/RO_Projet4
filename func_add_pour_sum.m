function [ res ] = func_add_pour_sum(fun, lambda, k)
% fonction auxilliare qui peut être sommée dans suminf_revenu
%% EN ENTREE
% fun : String, nom de la fonction de probabilité
% lambda : int, constante dans la somme
% k : int, indice de la somme (suminf_revenu)
%% EN SORTIE
 % res : float, resultat de la fonction
%% DEBUT DE LA FONCTION
 res = feval(fun, k) * (k - lambda); 
end
