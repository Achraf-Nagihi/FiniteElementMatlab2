function [X, T] = Maillage2(a, b, h)
%----------------------------
%Génére un maillage de type P1
% X la table des coordonnées 
% T la table de connectivité moyennant les indices
%----------------------------
        n = floor((b - a)/h) + 1
        X1 = a + h*(0:n-1)';
        X = zeros(2*n-1,1);
        for j=0:(n-1)
            X(2*(n-1)-2*j+1) = X1(n-j);
            if j ~= (n-1)
            X(2*(n-1)-2*j) = X1(n-j)-0.5*h;
            end
        end
      
    [~, I] = sort(X);
    T = [ I(1:2:(2*n-3)), I(2:2:2*(n-1)), I(3:2:(2*n-1))];


end