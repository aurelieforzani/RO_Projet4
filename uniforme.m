function [x] = uniforme(k)

%% EN ENTREE
% k : le nombre de succès : k succès et n - k échecs

%% EN SORTIE
% x : probabilité attendue

%% Déclaration de la variables globale
% Nombre maximal de demandes
global n;

%% Calcul de la probabilité
if ( 0 <= k && k <= n)
% Si k est dans le domaine de définition
    x = 1/(n+1);
else
    % Sinon
    x = 0;
end
return;

end