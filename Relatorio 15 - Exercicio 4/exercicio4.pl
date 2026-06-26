peca_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).

peca_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).

?- peca_raiz(P),
    componente(P, _, Categoria),
    Categoria \= propulsao.
