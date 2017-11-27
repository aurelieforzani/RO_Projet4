function [S,s] = main

global n;
global p;
global theta;
global lambda;
global mu;
Smax = 30;
C(1) = 5;
C(2) = 10;
C(3) = 10;
C(4) = 5;
v = 20;

%% Affichage du menu pour choisir la loi de probabilitée

disp(" ======================================== ");
disp(" ==        GESTION DE STOCK            == ");
disp(" ======================================== ");
disp(" ");

x = 0;
while (x ~= 1 && x~=2 && x~=3 && x~=5 && x~=4)
    prompt = 'Veuillez choisir votre loi de probabilité des demandes : \n 1 - Loi Uniforme \n 2 - Loi Binomiale \n 3 - Loi de Poisson \n 4 - Loi Gaussienne \n 5 - Loi géométrique \n     >>>  ' ;
    x = input(prompt);
end

%% Choix de la loi
if (x == 1)
    %% Loi uniforme
    n = 0;
    while (n <= 0 || floor(n) ~= n)
        prompt = 'Entrer la borne supérieure de la loi Uniforme (la borne in étant 0) \n     >>>  ';
        n = input(prompt);
    end
    nomLoi = 'uniforme';
elseif (x == 2)
    %% Loi binomiale
    n = 0;
    while (n <= 0 || floor(n) ~= n)
        prompt = 'Entrer le nombre de répétitions de la loi binomiale (nombre de clients qui entrent dans la boutique) \n     >>>  ';
        n = input(prompt);
    end
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
    nomLoi = 'poisson';
elseif (x == 4)
    %% Loi de gaussienne
    theta = -9;
    mu = 'a';
    
    prompt = 'Entrer la moyenne de la loi gaussienne \n     >>>  ';
    mu = input(prompt);
    
    while (theta < 0 )
        prompt = 'Entrer l écart-type de la loi gausienne \n     >>>  ';
        theta = input(prompt);
    end
    nomLoi = 'gaussienne';
elseif (x == 5)
    %% Loi géométrique
    p = -2;
    
    while (p <0 || p>1)
        prompt = 'Entrer la probabilité de la loi géométrique \n     >>>  ';
        p = input(prompt);
    end
    nomLoi = 'geometrique';
end
    
    % on calcul la première valeur de rev
    P = getP(1, 1, nomLoi);
    Pi = distributionLimite(P);
    rev = revenu_moyen(1, 1, Pi, nomLoi, C, v);
    S = 1;
    s = 1;
    
    % On test toutes les possibilités jusqu'à une limite fixé
    for i=1:Smax % on parcours sur grand S
        for j = 1:i % on parcours sur petit s
            P = getP(i,j,nomLoi);
            Pi = distributionLimite(P);
            rev_tmp = revenu_moyen(j, i, Pi, nomLoi, C, v); % On calcul le revenu pour ces deux valeures
            if rev_tmp >= rev
                rev = rev_tmp;
                S = i;
                s = j;
            end
        end
    end
    
end







