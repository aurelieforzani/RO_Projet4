function [ B ] = revenu_moyen(s, s_max, pi_limite, fun, C, v )
%Retourne le revenu moyen 
% 
%% EN ENTREE
% s : limite à partir de laquelle il faut commmander l'article pour la
% semaine suivante ( entier )
% s_max : nombre maximum d'articles en stock ( entier )
% pi_limite : pour tout i dans [1,S+1], pi_limite[i] représente la 
% probabilité que X_n = i quand n tend vers l'infini (vecteur de S+1 lignes)
% fun : loin de probabilité de D_n
% C : vecteur des C1, C2, C3, C4
% v : (entier) prix d'un article
%% VARIABLES LOCALES
% r : (vecteur de S+1 lignes) 
%% EN SORTIE
%  Revenu moyen 
%% DEBUT DE LA FONCTION

for j = 0:(s_max) 
    if j< s 
        r(j+1) = - C(1)* s_max - C(2) * suminf_revenu((s_max + 1),fun, 'func_add_pour_sum', s_max) - (C(3) + C(4) * (s_max - j)) + v * suminf_revenu(0, fun, 'func_min_pour_sum', s_max);
    else
        r(j+1) = - C(1) * j - C(2) * suminf_revenu((j+1), fun, 'func_add_pour_sum', j) + v * suminf_revenu(0, fun, 'func_min_pour_sum', j);
        
    end
end
B = sum(pi_limite' .* r);




end

