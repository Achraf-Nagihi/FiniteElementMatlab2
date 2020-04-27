function  y = phi3_P2(x, x1, x2, x3)
%calcule la fonction de forme phi2 telle que: 
%     phi3(x1)=0 et phi3(x2)=0 et phi3(x3)=1
%           
%                       Ti
%       |---------------|---------------|
%       x1              x2              x3
% phi1(x)=a*x+b et ab=[a;b]
ab=[x1^2 x1 1;x2^2 x2 1;x3^2 x3 1]\[0;0;1];
    y = polyval(ab,x);
end