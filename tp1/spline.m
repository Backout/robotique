clear;
close all;
clc;

options.Interpreter='tex';
options.Resize='on';
options.WindowStyle='normal';

answer = inputdlg({'O(ti)','O(tf)', 'ti', 'tf.'}, 'input', 1, {'0','pi/2','0','10'}, options);

Oti = str2num(answer{1});
Otf = str2num(answer{2});
ti = str2num(answer{3});
tf = str2num(answer{4});

teta = [Oti 0 0 Otf 0 0]

A = [ 
      1 ti ti^2 ti^3   ti^4    ti^5;
      0 1  2*ti 3*ti^2 4*ti^3  5*ti^4;
      0 0  2    6*ti   12*ti^2 20*ti^3;
      1 tf tf^2 tf^3   tf^4    tf^5;
      0 1  2*tf 3*tf^2 4*tf^3  5*tf^4;
      0 0  2    6*tf   12*tf^2 20*tf^3;
    ]

p = A\teta'

%coefs = [ p(6) p(5) p(4) p(3) p(2) p(1)];

vt = linspace(ti, tf, 10000);
Odteta = polyval(p, vt);

plot(Odteta, vt);


