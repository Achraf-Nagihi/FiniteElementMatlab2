function [ elemKi ] = mat_elem_P1(alpha,beta,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x2=X(T(i,2));

elemKi=(alpha/(x2-x1))*[1  -1;-1   1]+ (beta*((x2-x1)/6)*[2 1;1 2]);

end