function res = sumInfProba(fun,i)
% fonction retournant la somme infinie de la fonction fournie en paramètres
%% EN ENTREE
% fun : String, nom de la fonction de probabilité
% i : int, indice de départ de la somme
%% VARIABLES LOCALES
% eps : float, précision voulu dans l'approximation de la somme
% ind : int, indice courant de la somme
% maxiter : int, nombre maximal d'itération de la somme
%% EN SORTIE
 % res : float, approximation de la somme infinie
%% DEBUT DE LA FONCTION

%Initialisation
res = 0;
eps = 10^(-5);
maxiter = 1000;
ind = i;

% Réalisation de la somme
while ((feval(fun,ind) > eps) && (ind < maxiter))
    res = res + feval(fun,ind);
    ind = ind + 1;
end