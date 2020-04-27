function [X, T] = Maillage(a, b, h)
%----------------------------
%Génére un maillage de type P1
% X la table des coordonnées 
% T la table de connectivité moyennant les indices (les intervalles)
%----------------------------
        n = floor((b - a)/h) + 1; % Nombre des noeuds
        X = a + h*(0:n-1)';       % Vecteur des noeuds
      
    [~, I] = sort(X);
    T = [ I(1:n-1), I(2:n)];


end