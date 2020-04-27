function [K,F] = AssemblageP2(alpha,beta,f, X, T)
% Assemblage des matrices élémentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres élémentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
%    1) mat_elem_P1(alha,X,T,i)
%    2) SM_elem_P1(f,X,T,i)
%
    n = size(X,1);   % nombre des noeuds
    t = size(T,1);   % nombre des éléments
    
    K = zeros(n);    
    F = zeros(n,1);
% Assemblage de la matrice golbale K
c=0;
   for k=1:2:(2*t-1)   % boucle sur les éléments
       c=c+1;
       elemKi = mat_elem_P2(alpha,beta,X,T,c);  % matrice de l'élément numéro k
     for i=1:3  %boucle sur les numéros locaux
     for j=1:3  %boucle sur les numéros locaux
     I=k+i-1;                            % numéros globaux dans K
     J=k+j-1;                            % numéros globaux dans K
     K(I,J)=K(I,J)+ elemKi(i,j);         % l'assemblage
     end
     end    
   end
% Assemblage du second membre élémentaire golbal F
c=0;
   for k=1:2:(2*t-1)
       c=c+1; % boucle sur les éléments
       elemFi = SM_elem_P2(f,X,T,c);  % SM de l'élément numéro k
     for i=1:3  %boucle sur les numéros locaux
     I=k+i-1;                            % numéros globaux dans K
     F(I)=F(I)+ elemFi(i);         % l'assemblage
     end
   end    
end
