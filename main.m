function main

%% Affichage du menu pour choisir la loi de probabilitée

disp(" ======================================== ");
disp(" ==        GESTION DE STOCK            == ");
disp(" ======================================== ");
disp(" ");

x = 0;
while (x ~= 1 && x~=2 && x~=3 && x~=4)
    prompt = 'Veuillez choisir votre loi de probabilité des demandes : \n 1 - Loi Uniforme \n 2 - Loi Binomiale \n 3 - Loi de Poisson \n 4 - Loi Gaussienne \n ';
    x = input(prompt);
end 

%% Choix de la loi
if (x == 1)
    y = 0;
    while (y <= 0 || floor(y) ~= y)
        prompt = 'Entrer la borne supérieure de la loi Uniforme (la borne in étant 0) \n';
        y = input(prompt);
    end  
end
        
        
        




