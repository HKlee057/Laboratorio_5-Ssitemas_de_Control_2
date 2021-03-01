%% Laboratorio 5
%% Datos
% Hector Alejandro Kl�e Gonz�lez - 17118
% Juan Diego Castillo Amaya - 17074
% Secci�n 11 
% Sistemas de Control 2
%% Procedimiento
%% Primera Parte
%% Inciso 2
syms M1_sym M2_sym k_sym ks_sym fv_sym fs_sym 
% Matrices del Sistema
A_sym = [0 0 1 0;
    0 0 0 1; 
    ((-k_sym - ks_sym) / M1_sym) (ks_sym / M1_sym) ...
    ((-fs_sym - fv_sym) / M1_sym) (fs_sym / M1_sym); 
    (ks_sym / M2_sym) (-ks_sym / M2_sym) (fs_sym / M2_sym) ...
    (-fs_sym / M2_sym)];

B_sym = [0; 0; 1/M1_sym; 0];

C1 = [1 0 0 0;
    0 1 0 0];

D1 = [0; 0];

%% Inciso 3
M1 = 320;
M2 = 2500;
k = 500000;
ks = 80000;
fv = 15020;
fs = 350;
F = 500e3;

A = subs(A_sym, [M1_sym, M2_sym, k_sym, ks_sym, fv_sym, fs_sym], ...
    [M1, M2, k, ks, fv, fs]);
A = double(A);
B = subs(B_sym, [M1_sym, M2_sym, k_sym, ks_sym, fv_sym, fs_sym], ...
    [M1, M2, k, ks, fv, fs]);
B = double(B);
%% Inciso 4 
C2 = eye(4);
D2 = [0; 0; 0; 0];

%% Inciso 5
init_con = [0; 1; 0; 0];