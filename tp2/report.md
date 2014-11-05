\title{TD1. Étude du robot Scara}
\author{Axel BENEULT LEFAUCHEUX}
\date{\today}

\maketitle


Établir le modèle géométrique direct en position et en rotation.
===================================================================

On utilise la table de Denavit et Hertenberg pour définir les matrices : H~1~, H~2~, H~3~, H~4~.


\[ 
H~1~ = 
\begin{pmatrix}
 \cos (\text{$\theta $1}) & -\sin (\text{$\theta $1}) & 0 & \text{a1} \cos (\text{$\theta $1}) \\
 \sin (\text{$\theta $1}) & \cos (\text{$\theta $1}) & 0 & \text{a1} \sin (\text{$\theta $1}) \\
 0 & 0 & 1 & \text{d1} \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]


\[ 
H~2~ = 
\begin{pmatrix}
 \cos (\text{$\theta $2}) & \sin (\text{$\theta $2}) & 0 & \text{a2} \cos (\text{$\theta $2}) \\
 \sin (\text{$\theta $2}) & -\cos (\text{$\theta $2}) & 0 & \text{a2} \sin (\text{$\theta $2}) \\
 0 & 0 & -1 & 0 \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]

\[ 
H~3~ = 
\begin{pmatrix}
 1 & 0 & 0 & 0 \\
 0 & 1 & 0 & 0 \\
 0 & 0 & 1 & \text{d3} \\
 0 & 0 & 0 & 1 \\
\end{pmatrix}
\]

\[ 
H~4~ = 
\begin{pmatrix}
 \cos (\text{$\theta $4}) & -\sin (\text{$\theta $4}) & 0 & 0 \\
 \sin (\text{$\theta $4}) & \cos (\text{$\theta $4}) & 0 & 0 \\
 0 & 0 & 1 & \text{d4} \\
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
\cos (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & \sin (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & 0 & \text{a1} \cos (\text{$\theta $1})+\text{a2} \cos
   (\text{$\theta $1}+\text{$\theta $2}) \\
 \sin (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & -\cos (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & 0 & \text{a1} \sin (\text{$\theta $1})+\text{a2} \sin
   (\text{$\theta $1}+\text{$\theta $2}) \\
 0 & 0 & -1 & \text{d1}-\text{d3}-\text{d4} \\
 0 & 0 & 0 & 1 \\
 \end{pmatrix}
\]

A partir de la matrice H~0~^4^ on peut déduire le modèle géométrique direct en position (MGDpos) et en orientation (MGDori)

\[ 
MGDpos = 
\begin{pmatrix}
\text{a1} \cos (\text{$\theta $1})+\text{a2} \cos(\text{$\theta $1}+\text{$\theta $2}) \\
\text{a1} \sin (\text{$\theta $1})+\text{a2} \sin(\text{$\theta $1}+\text{$\theta $2}) \\
\text{d1}-\text{d3}-\text{d4} \\
\end{pmatrix}
\]

\[ 
MGDori = 
\begin{pmatrix}
\cos (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & \sin (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & 0 \\
 \sin (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & -\cos (\text{$\theta $1}+\text{$\theta $2}-\text{$\theta $4}) & 0 \\
 0 & 0 & -1\\
 \end{pmatrix}
\]

Inverser le modèle géométrique en position.
===========================================

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
