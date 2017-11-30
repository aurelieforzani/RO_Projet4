function P = getP(S,s,fun)
% Retourne la matrice de transition P
%% EN ENTREE
% S : int, nombre maximum d'articles en stock
% s : int, nombre d'articles en stock en desous duquel il faut recommander
% des articles
% fin : String, nom de la fonction de probabilité utilisée
%% EN SORTIE
% P, matrice carrée de float de taille (S+1), matrice de transition des Xn
%% DEBUT DE LA FONCTION

%Initialisation de P
P = zeros(S+1,S+1);

% Parcourir les états Xn
for i=0:S
    if (i>=s)
        for j = 0:S
            if (j==0)
                P(i+1,j+1) = sumInfProba(fun,i);
            elseif (j>i)
                P(i+1,j+1) = 0;
            else
                P(i+1,j+1) = feval(fun,i-j);
            end
        end;
    else
        for j = 0:S
            if (j==0)
                P(i+1,1) = sumInfProba(fun,S);
            else
                P(i+1,j+1) = feval(fun,S-j);
            end
        end
    end;
end;
