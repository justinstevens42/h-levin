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
edge(e4, v1, v5).
edge(e4, v5, v1).
edge(e8, v5, v6).
edge(e11, v5, v9).
edge(e11, v9, v5).
edge(e15, v9, v10).
edge(e18, v9, v13).
edge(e18, v13, v9).
edge(e22, v13, v14).
edge(e25, v13, v17).
edge(e25, v17, v13).
edge(e29, v17, v18).
edge(e1, v2, v1).
edge(e2, v2, v3).
edge(e5, v2, v6).
edge(e8, v6, v5).
edge(e5, v6, v2).
edge(e9, v6, v7).
edge(e12, v6, v10).
edge(e15, v10, v9).
edge(e12, v10, v6).
edge(e16, v10, v11).
edge(e19, v10, v14).
edge(e22, v14, v13).
edge(e19, v14, v10).
edge(e23, v14, v15).
edge(e26, v14, v18).
edge(e29, v18, v17).
edge(e26, v18, v14).
edge(e30, v18, v19).
edge(e2, v3, v2).
edge(e3, v3, v4).
edge(e6, v3, v7).
edge(e9, v7, v6).
edge(e6, v7, v3).
edge(e10, v7, v8).
edge(e13, v7, v11).
edge(e16, v11, v10).
edge(e13, v11, v7).
edge(e17, v11, v12).
edge(e20, v11, v15).
edge(e23, v15, v14).
edge(e20, v15, v11).
edge(e24, v15, v16).
edge(e27, v15, v19).
edge(e30, v19, v18).
edge(e27, v19, v15).
edge(e31, v19, v20).
edge(e3, v4, v3).
edge(e7, v4, v8).
edge(e10, v8, v7).
edge(e7, v8, v4).
edge(e14, v8, v12).
edge(e17, v12, v11).
edge(e14, v12, v8).
edge(e21, v12, v16).
edge(e24, v16, v15).
edge(e21, v16, v12).
edge(e28, v16, v20).
edge(e31, v20, v19).
edge(e28, v20, v16).
corner(c1).
corner(c3).
corner(c12).
corner(c10).
constraintCell(c1, 2, [e1, e4, e5, e8]).
constraintCell(c8, 2, [e16, e19, e20, e23]).
constraintCell(c11, 3, [e23, e26, e27, e30]).
constraintCell(c12, 2, [e24, e27, e28, e31]).
constraintCell(c2, 2, [e2, e5, e6, e9]).
