function [X, T] = MaillageP2(a, b, h)
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
    plot(X1, zeros(1,n), 'b-o');
    set(gca,'xcolor','w');
    set(gca,'ycolor','w');
    set(gca,'Color','black');
    
    for i = 1:size(T,1)
        text(X1(T(i,1)-i+1) + 2*(X1(T(i,2)-i+1)-X1(T(i,1)-i+1))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
    end
 
end