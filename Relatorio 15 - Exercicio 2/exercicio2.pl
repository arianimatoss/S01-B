hangar_combate(H) :-
    possui(H, P1),
    possui(H, P2),
    componente(P1, _, combate),
    componente(P2, _, combate),
    P1 \= P2.


falta_energia(H) :-
    possui(H, _),
    \+ (
        possui(H, P),
        componente(P, _, propulsao)
    ).

?- hangar_combate(H),
    falta_energia(H).

