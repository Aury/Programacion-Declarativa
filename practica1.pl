% practica1.pl


%% 1. REPRESENTACIÓN DE MATRICES

% row(X, N, C): C es la fila N-esima de la matriz X.
row([X|_], 0, X).
row([_|T], N, C) :-
	N1 is N - 1,
	row(T, N1, C).

% column(X, N, C): C es la columna N-esima de la matriz X.
column(X, N, C) :-
        transpose(X, XT),
        row(XT, N, C).

% first_column(X, C, R): la matriz X esta formada por la primera columna
% C y el resto de la matriz R. 
first_column([], [], []).
first_column([[I|Is]|Rs], [I|Col], [Is|Rest]) :-
    first_column(Rs, Col, Rest).


%% 2. OPERACIONES CON MATRICES

% symmetrical(X): X es una matriz (cuadrada) simetrica respecto
% a la diagonal principal.
symmetrical(X) :- transpose(X, X).

% transpose(X, Y): Y es la matriz traspuesta de X.
transpose([[]|_], []).
transpose([[I|Is]|Rs], [Col|MT]) :-
    first_column([[I|Is]|Rs], Col, [Is|NRs]),
    transpose([Is|NRs], MT).


%% 3. REPRESENTACIÓN MATRICIAL DE UN SISTEMA DE ECUACIONES

% product(M, N, P): P = M x N, siendo M, N y P matrices.
product([], _, []).
product([A|As], B, [O|Os]) :-
        transpose(B, BT),
        product(As, B, Os),
        multiply(BT, A, O).

multiply([], _, []).
multiply([M|Ms], C, [O|Os]) :-  
        multiply(Ms, C, Os),
        dot(M, C, O).

dot([], [], 0).
dot([A|As], [B|Bs], N) :-
        dot(As, Bs, Ns),
        N is Ns + (A * B).

% ecuaciones(M, N, P, E): E es el sistema de ecuaciones M x N = P,
% siendo M la matriz de coeficientes, N el vector --lista-- de 
% variables y P el vector de terminos independientes.
