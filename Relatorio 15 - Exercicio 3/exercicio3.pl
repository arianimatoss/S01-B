item_faltante(Hangar, Peca) :-
    precisa(_, Peca),
    \+ possui(Hangar, Peca).

pode_montar(Hangar, Componente) :-
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (
        precisa(Componente, Peca),
        item_faltante(Hangar, Peca)
    ).

?- pode_montar(hangar_beta, X).

?- pode_montar(hangar_gamma, ia_navegação).

