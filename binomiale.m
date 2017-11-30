function [x] = binomiale(k)
% renvoie la probabilité que qu'il y ait k articles de vendus pendant la
% semaine selon la loi binomiale


%% EN ENTREE
% k : le nombre de succès : (n-k) échecs et k succès

%% EN SORTIE
% x : probabilité attendue

%% Déclaration des variables globales
% Nombre de répétitions
global n;
% Probabilité de succès
global p;

%% Calcul de la probabilité
if (k >= 0 && k <= n)
% Si k est dans le domaine de définition
    x = nchoosek(n,k)*p^k*(1-p)^(n-k);
else
% sinon la probabilité est nulle
    x=0;
end
return;

end