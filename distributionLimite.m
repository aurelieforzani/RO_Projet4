function Pi = distributionLimite(P)
% Fonction qui renvoie la distribution limite de P
%% EN ENTREE
% P : matrice carrée de taille S+1, matrice de transition des Xn
%% EN SORTIE
% Pi : vecteur de taille S+1, pi_limite : pour tout i dans [1,S+1], pi_limite[i] représente la 
% probabilité que Xn = i quand n tend vers l'infini (vecteur de S+1 lignes)
%% DEBUT DE LA FONCTION
S = size(P,1)-1;

A = P'-diag(ones(1,S+1));
B = zeros(S+1,1);

A(S+2,:) = ones(1,S+1);
B(S+2) = 1;

Pi = A\B;