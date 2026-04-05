
clc, clear, close all

%%%

m = 1;
k = 20;
c = 5;

%%%

A = [0 1;
     -k/m -c/m];

B = [0;
    1/m];

C = [1 0];

D = 0;

%%%

sys = ss(A, B, C, D);

%%%

figure;
step(sys);
grid on
stepinfo(sys)

%%%
