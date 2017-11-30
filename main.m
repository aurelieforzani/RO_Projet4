function [S,s, rev] = main

% Renvoie S le nombre max d'articles en stock et s le nombre d'articles 
% restants à partir duquel il faut recommander pour avoir un revenu moyen
% maximal.

%% EN ENTREE


%% EN SORTIE
% S : stock maximal
% s : stock minimal obligant le commerçant à refaire son stock

%% Déclaration des variables globales
global n;
global p;
global lambda;

%% Initialisation des variables locales (Smax sera recalculé selon la loi choisie)
C(1) = 5;  % Coût de stockage
C(2) = 10; % Coût de pénurie
C(3) = 10; % Partie constante du prix d'achat
C(4) = 5;  % Partie variable du prix d'achat
v = 20;    % Prix de vente

%% Affichage du menu pour choisir la loi de probabilitée

disp(" ======================================== ");
disp(" ==        GESTION DE STOCK            == ");
disp(" ======================================== ");
disp(" ");

x = 0;
while (x ~= 1 && x~=2 && x~=3)
    prompt = 'Veuillez choisir votre loi de probabilité des demandes : \n 1 - Loi Uniforme \n 2 - Loi Binomiale \n 3 - Loi de Poisson \n      >>>  ' ;
    x = input(prompt);
end

%% Choix de la loi
if (x == 1)
    %% Loi uniforme
    n = 0;
    while (n <= 0 || floor(n) ~= n)
        prompt = 'Entrer la borne supérieure de la loi Uniforme (la borne min étant 0) \n     >>>  ';
        n = input(prompt);
    end
    Smax = n;
    nomLoi = 'uniforme';
elseif (x == 2)
    %% Loi binomiale
    n = 0;
    while (n <= 0 || floor(n) ~= n)
        prompt = 'Entrer le nombre de répétitions de la loi binomiale (nombre de clients qui entrent dans la boutique) \n     >>>  ';
        n = input(prompt);
    end
    Smax = n;
    p = -1;
    while (p<0 || p>1)
        prompt = 'Entrer la probabilité qu un client entré dans la boutique achète un article \n     >>>  ';
        p = input(prompt);
    end
    nomLoi = 'binomiale';
elseif (x == 3)
    %% Loi de poisson
    lambda = 0;
    while (lambda <= 0 )
        prompt = 'Entrer le paramètre de la loi de poisson \n     >>>  ';
        lambda = input(prompt);
    end
    Smax = 2 * lambda;
    nomLoi = 'poisson';

end
    
%% Calcul de S et s par itération
    % on calcul la première valeur du revenu (rev)
    P = getP(1, 1, nomLoi);
    Pi = distributionLimite(P);
    rev = revenu_moyen(1, 1, Pi, nomLoi, C, v);
    S = 1;
    s = 1;
    
    % On test toutes les possibilités jusqu'à une limite fixée
    for i=1:Smax % on parcours sur grand S
        for j = 1:i % on parcours sur petit s
            P = getP(i,j,nomLoi);
            Pi = distributionLimite(P);
            % On calcul le revenu pour ces deux valeures
            rev_tmp = revenu_moyen(j, i, Pi, nomLoi, C, v); 
            % S'il est supérieur au meilleur revenu trouvé
            if rev_tmp >= rev
                % On met à jour le revenu
                rev = rev_tmp;
                % On met à jour S
                S = i;
                % On met à jour s
                s = j;
            end
        end
    end

    return;

end







