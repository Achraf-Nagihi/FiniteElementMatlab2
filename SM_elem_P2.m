function [ elemFi ] = SM_elem_P2(f,X,T,i)
%calcule le second membre élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%elle fait appel aux deux fonctions:
%  y = int_phi1(f,x1,x2) 
%  y = int_phi2(f,x1,x2)
x1=X(T(i,1));
x2=X(T(i,2));
x3=X(T(i,3));
elemFi=[int_phi1_P2(f,x1,x2,x3);int_phi2_P2(f,x1,x2,x3);int_phi3_P2(f,x1,x2,x3)];
%
end