function [ x ] = geometrique(k)

%% EN ENTREE
% k : le nombre de répétions : (k-1) échecs et 1 succès

%% EN SORTIE
% x : probabilité attendue

%% déclaration des variables globales
% Probabilité de succès
global p;

%% Calcul de la probabilité
if (k >= 0)
    % Si k est dans le domaine de définition
    x = p * (1-p)^(k-1);
else
    % Sinon
    x=0;
end
return;

end

