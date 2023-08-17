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
edge(e3, v1, v4).
edge(e3, v4, v1).
edge(e6, v4, v5).
edge(e8, v4, v7).
edge(e8, v7, v4).
edge(e11, v7, v8).
edge(e13, v7, v10).
edge(e13, v10, v7).
edge(e16, v10, v11).
edge(e18, v10, v13).
edge(e18, v13, v10).
edge(e21, v13, v14).
edge(e1, v2, v1).
edge(e2, v2, v3).
edge(e4, v2, v5).
edge(e6, v5, v4).
edge(e4, v5, v2).
edge(e7, v5, v6).
edge(e9, v5, v8).
edge(e11, v8, v7).
edge(e9, v8, v5).
edge(e12, v8, v9).
edge(e14, v8, v11).
edge(e16, v11, v10).
edge(e14, v11, v8).
edge(e17, v11, v12).
edge(e19, v11, v14).
edge(e21, v14, v13).
edge(e19, v14, v11).
edge(e22, v14, v15).
edge(e2, v3, v2).
edge(e5, v3, v6).
edge(e7, v6, v5).
edge(e5, v6, v3).
edge(e10, v6, v9).
edge(e12, v9, v8).
edge(e10, v9, v6).
edge(e15, v9, v12).
edge(e17, v12, v11).
edge(e15, v12, v9).
edge(e20, v12, v15).
edge(e22, v15, v14).
edge(e20, v15, v12).
corner(c1).
corner(c2).
corner(c8).
corner(c7).
constraintCell(c5, 1, [e11, e13, e14, e16]).
constraintCell(c3, 3, [e6, e8, e9, e11]).
constraintCell(c7, 1, [e16, e18, e19, e21]).
