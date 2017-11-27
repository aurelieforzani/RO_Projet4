function [ res ] = func_add_pour_sum(fun, lambda, k)

% 
%% EN ENTREE
% 
%% VARIABLES LOCALES
%% EN SORTIE
 
%% DEBUT DE LA FONCTION
 res = feval(fun, k) * (k - lambda); 
end
