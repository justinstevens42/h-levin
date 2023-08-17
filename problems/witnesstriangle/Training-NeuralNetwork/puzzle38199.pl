list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).
member_count([], _, 0).
member_count([X | TAIL] , A, S) :- list_member(X, A) -> member_count(TAIL, A, Y), S is Y+1; member_count(TAIL, A, Y), S is Y.
list_length(X, S) :- member_count(X, X, S).
greaterThanEqual(X,Y) :- X>=Y.
adjacentCell(Path, Cell) :- pathHead(Path, Vertex), constraintCell(Cell, _, ListOfEdges), list_member(Edge, ListOfEdges), edge(Edge, Vertex, _).
notAdjacentCell(Path, Cell) :- \+ adjacentCell(Path, Cell).
one(1).
two(2).
three(3).
not(notCompletable(_, [])).
notCompletable(P, [C|T]) :- breaksConstraint(P, C); notCompletable(P, T).
greaterThan(X,Y) :- X>Y.
edge(e1, v1, v2).
edge(e5, v1, v6).
edge(e5, v6, v1).
edge(e10, v6, v7).
edge(e14, v6, v11).
edge(e14, v11, v6).
edge(e19, v11, v12).
edge(e1, v2, v1).
edge(e2, v2, v3).
edge(e6, v2, v7).
edge(e10, v7, v6).
edge(e6, v7, v2).
edge(e11, v7, v8).
edge(e15, v7, v12).
edge(e19, v12, v11).
edge(e15, v12, v7).
edge(e20, v12, v13).
edge(e2, v3, v2).
edge(e3, v3, v4).
edge(e7, v3, v8).
edge(e11, v8, v7).
edge(e7, v8, v3).
edge(e12, v8, v9).
edge(e16, v8, v13).
edge(e20, v13, v12).
edge(e16, v13, v8).
edge(e21, v13, v14).
edge(e3, v4, v3).
edge(e4, v4, v5).
edge(e8, v4, v9).
edge(e12, v9, v8).
edge(e8, v9, v4).
edge(e13, v9, v10).
edge(e17, v9, v14).
edge(e21, v14, v13).
edge(e17, v14, v9).
edge(e22, v14, v15).
edge(e4, v5, v4).
edge(e9, v5, v10).
edge(e13, v10, v9).
edge(e9, v10, v5).
edge(e18, v10, v15).
edge(e22, v15, v14).
edge(e18, v15, v10).
corner(c1).
corner(c4).
corner(c8).
corner(c5).
constraintCell(c7, 1, [e12, e16, e17, e21]).
constraintCell(c3, 2, [e3, e7, e8, e12]).
constraintCell(c8, 2, [e13, e17, e18, e22]).
