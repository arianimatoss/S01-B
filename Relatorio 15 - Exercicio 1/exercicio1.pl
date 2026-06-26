peca_critica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.

?- componente(P, 6, sistemas),
    \+ precisa(_, P).

