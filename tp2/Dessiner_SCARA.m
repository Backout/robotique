function DessinerSCARA=Dessiner_SCARA(T1,a1,d1)
 

%%%%%%%% Tracé du bras 1
X_1=a1*cosd(T1);
Y_1=a1*sind(T1);
plot3([0 X_1],[0 Y_1],[d1 d1],'blue','linewidth',7)
 



 axis([-(a1) (a1) -(a1) (a1) 0 d1])
hold off