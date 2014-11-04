function [result]=Scara_GEOINV(X,Y,Z,psi)
d1 = 1;
a1 = 1;
a2 = 1;
d4 = 1;

d3 = d1 - d4 - Z;

cosT2 = (X^2+Y^2-a1^2-a2^2)/(2*a1*a2);
    
T2 = -acos(cosT2);


k1 = a1+a2*cosT2;
k2 = a2*sin(T2);

T1 = atan2(Y,X)-atan2(k2,k1);
T4 = T1+T2-psi;

T1 = rad2deg(T1);
T2 = rad2deg(T2);
T4 = rad2deg(T4);

result = [T1 T2 d3 T4];

 

