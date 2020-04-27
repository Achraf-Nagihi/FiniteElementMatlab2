function [ elemKi ] = mat_elem_P2(alpha,beta,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
%x2=X(T(i,2));
x3=X(T(i,3));

elemKi=((alpha*2/(x3-x1))*[7/6 -4/3 1/6;-4/3 8/3 -4/3;1/6 -4/3 7/6])+(beta*((x3-x1)/2)*[4/15 2/15 -1/15;2/15 16/15 2/15;-1/15 2/15 4/15]);


end