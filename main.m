function main

global n;
global p;
global theta;
global lambda;
global mu;

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
        prompt = 'Entrer le paramètre de la loi de poisson \n      >>>  ';
        lambda = input(prompt);
    end
    nomLoi = 'poisson';
elseif (x == 4)
    %% Loi de gaussienne
    theta = -9;
    mu = 'a';
    
    prompt = 'Entrer la moyenne de la loi gaussienne \n      >>>  ';
    mu = input(prompt);
    
    while (theta < 0 )
        prompt = 'Entrer l écart-type de la loi gausienne \n      >>>  ';
        theta = input(prompt);
    end
    nomLoi = 'gaussienne';
elseif (x == 5)
    %% Loi géométrique
    p = -2;
    
    while (p <0 || p>1)
        prompt = 'Entrer la probbailité de la loi géométrique \n      >>>  ';
        p = input(prompt);
    end
    nomLoi = 'geometrique';
end
    P = getP(5,2,nomLoi)
    
end







