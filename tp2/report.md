\title{TD1. Étude du robot Scara}
\author{Axel BENEULT LEFAUCHEUX}
\date{\today}

\maketitle


Établir le modèle géométrique direct en position et en rotation.
================================================================

On utilise la table de Denavit et Hertenberg pour définir les matrices : H~1~, H~2~, H~3~, H~4~.


\[ 
H~1~ = 
\begin{pmatrix}
 \cos (\theta^*_1) & -\sin (\theta^*_1) & 0 & a_1 \cos (\theta^*_1) \\
 \sin (\theta^*_1) & \cos (\theta^*_1) & 0 & a_1 \sin (\theta^*_1) \\
 0 & 0 & 1 & d_1 \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]

\[ 
H~2~ = 
\begin{pmatrix}
 \cos (\theta^*_2) & \sin (\theta^*_2) & 0 & a_2 \cos (\theta^*_2) \\
 \sin (\theta^*_2) & -\cos (\theta^*_2) & 0 & a_2 \sin (\theta^*_2) \\
 0 & 0 & -1 & 0 \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]

\[ 
H~3~ = 
\begin{pmatrix}
 1 & 0 & 0 & 0 \\
 0 & 1 & 0 & 0 \\
 0 & 0 & 1 & d^*_3 \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]

\[ 
H~4~ = 
\begin{pmatrix}
 \cos (\theta^*_4) & -\sin (\theta^*_4) & 0 & 0 \\
 \sin (\theta^*_4) & \cos (\theta^*_4) & 0 & 0 \\
 0 & 0 & 1 & d_4 \\
 0 & 0 & 0 & 1 \\
 \end{pmatrix}
\]

En calculant le produit matricielle de ces matrices on obtient une matrice contenant le modèle géométrique direct.

\[
H~0~^4^ = H~1~.H~2~.H~3~.H~4~
\]

\[ 
H~0~^4^ = 
\begin{pmatrix}
\cos (\theta^*_1+\theta^*_2-\theta^*_4) & \sin (\theta^*_1+\theta^*_2-\theta^*_4) & 0 & a_1 \cos (\theta^*_1)+a_2 \cos (\theta^*_1+\theta^*_2) \\
 \sin (\theta^*_1+\theta^*_2-\theta^*_4) & -\cos (\theta^*_1+\theta^*_2-\theta^*_4) & 0 & a_1 \sin (\theta^*_1)+a_2 \sin (\theta^*_1+\theta^*_2) \\
 0 & 0 & -1 & d_1-d^*_3-d_4 \\
 0 & 0 & 0 & 1 \\
 \end{pmatrix}
\]

A partir de la matrice H~0~^4^ on peut déduire le modèle géométrique direct en position (MGDpos) et en orientation (MGDori)

\[ 
MGDpos = 
\begin{pmatrix}
a_1 \cos (\theta^*_1)+a_2 \cos(\theta^*_1+\theta^*_2) \\
a_1 \sin (\theta^*_1)+a_2 \sin(\theta^*_1+\theta^*_2) \\
d_1-d^*_3-d_4 \\
\end{pmatrix}
\]

\[ 
MGDori = 
\begin{pmatrix}
\cos (\theta^*_1+\theta^*_2-\theta^*_4) & \sin (\theta^*_1+\theta^*_2-\theta^*_4) & 0 \\
 \sin (\theta^*_1+\theta^*_2-\theta^*_4) & -\cos (\theta^*_1+\theta^*_2-\theta^*_4) & 0 \\
 0 & 0 & -1\\
 \end{pmatrix}
\]

Inverser le modèle géométrique en position.
===========================================

Pour inverser le modèle géométrique en position on utilise une méthode analytique. Depuis le MGD en position on peut en déduire que :

\[ 
\begin{pmatrix}
X\\
Y\\
Z\\
\end{pmatrix} 
= 
f
\begin{pmatrix}
a_1 \cos (\theta^*_1)+a_2 \cos(\theta^*_1+\theta^*_2) \\
a_1 \sin (\theta^*_1)+a_2 \sin(\theta^*_1+\theta^*_2) \\
d_1-d^*_3-d_4 \\
\end{pmatrix}
\]

Cherchant $\theta^*_1$, $\theta^*_2$ et d^*^~3~ il suffit de trouver f^-1^.

\begin{equation}
Z = d_1-d^*_3-d_4
\label{zeqd}
\end{equation}

L'équation \eqref{zeqd} nous permet de déduire directement que :
\[
	d^*^~3~ = d~1~-d~4~-Z
\]

Pour exprimer $\theta^*_2$ on prend la somme de X^2^ et Y^2^ pour pouvoir faire sortir un $\cos(\theta^*_2)$ : 

\[
X^2^ + Y^2^ = a~1~^2^+a~2~^2^+2 a~1~ a~2~ \cos (\theta ^*^~2~)
\]

\[
\cos (\theta ^*^~2~) = \frac{X^2+Y^2-a_1^2-a_2^2}{2 a_1 a_2} 
\]

On peut donc dire que si : $| \frac{X^2+Y^2-a_1^2-a_2^2}{2 a_1 a_2} | \leq 1$ alors $\theta^*_2 = \pm \arccos(\frac{X^2+Y^2-a_1^2-a_2^2}{2 a_1 a_2})$.
Pour déterminer $\theta^*_1$, on considère $\theta^*_2$ comme connu.

\[
X = a~1~ \cos (\theta ^*^~1~)+a~2~ \cos(\theta ^*^~2~) \cos(\theta ^*^~1~) - a~2~ \sin(\theta ^*^~2~) \sin(\theta ^*^~1~)

Y = a~1~ \sin (\theta ^*^~1~)+a~2~ \cos(\theta ^*^~2~) \cos(\theta ^*^~1~) - a~2~ \sin(\theta ^*^~2~) \sin(\theta ^*^~1~)

\]


Ce modèle admet-il une solution unique?
---------------------------------------

Trajectoire du robot
====================

Expliquer ce principe
----

Expliquer pourquoi il est nécessaire de choisir des vitesses et accélérations initiales et finales nulles.
------
Donner l'algorithme qui permet de déterminer les coefficients des polynômes d'ordre 5
------
