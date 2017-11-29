function [x] = gaussienne(k)

%% EN ENTREE
% k : ......................................

%% EN SORTIE
% x : probabilité attendue

%% Déclaration dse variables globales
% Ecart-type de la loi
global theta;
% Moyenne de la loi
global mu;

%% Calcul de la probabilité
if (k >= 0)
% Si k est dans le domaine de définition
    x = (1/(theta*sqrt(2*pi))) * (exp((-1/2)*((k-mu)/theta)^2));
else 
% Sinon
    x=0;
end
return;

end