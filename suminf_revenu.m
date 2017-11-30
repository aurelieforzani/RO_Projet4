function [ somme ] = suminf_revenu(i, fun, fun_pour_somme, lambda)
%Approximation de la somme qui va de i à l'infini de lambda fois
%% EN ENTREE
% i : int, debut de la somme
% fun : String, nom de la fonction de probabilité utilisée 
% fun_pour_somme : String, nom de la fonction qui est utilisée dans la
% somme
% lambda : int, argument supplémentaire à donner à fun_pour_sum
%% VARIABLES LOCALES
% r : (vecteur de S+1 lignes) 
% eps : float, niveau de précision que l'on souhaite atteindre dans
% l'approximation de la somme
% maxiter : int, nombre maximum d'itérations
% miniter : int, nombre minimum d'itérations
% resultat_func : float, resultat à chaque itération de la boucle de la fonction
% qui s'appelle fun_pour_somme
%% EN SORTIE
% somme :  float, résultat de la somme 
%% DEBUT DE LA FONCTION

%Initialisation
eps = 10^(-6);
maxiter = 1000;
somme = 0;
resultat_func = 1;
miniter= 20;

%Réalisation de la somme
while (i <= maxiter &&  (resultat_func>eps || i <= miniter)) 
    resultat_func = feval(fun_pour_somme, fun , lambda, i );
    somme = somme + resultat_func;
    i = i+1;
end
 

end
