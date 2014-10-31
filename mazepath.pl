%Author: Jun Huang
%Date: 10/31/2014
%CS463 Prolog Assignment 1
%Prolog Compiler: SWI-Prolog version 6.6.6 by Jan Wielemaker (jan@swi-prolog.org)

%Tom Allens code of getting an element at X position in a list.
position(X, 1, [X|_]).
position(X, Nplus1, [_|Tail]) :-
    position(X, N, Tail),
    Nplus1 is N + 1.



%Find value of X,Y index of 2d array.
getPos(Res,XPos,YPos,Matrix):-
	position(RowX,XPos,Matrix), %get the X row of the array
	position(Res,YPos,RowX). %return the Y element of X row in matrix.


%Print the path from beginning to end.
printPath([]).
printPath([H|T]):-
	writeln(H),
	printPath(T).


%depth first search the matrix
dfs(X0,Y0,X,Y,Matrix):-
	%getPos(Res,X0,Y0,Matrix),
	isWalkable(Res),
	traverseNeighbors(X0,Y0,X,Y),
	getPos(Res,X,Y,Matrix),
	isWalkable(Res).


%check if the current position is walkable hall.
isWalkable(CurrEle) :- CurrEle = 0.



%Traverse the actual neighbors
traverseNeighbors(X0,Y0,X0,Y) :- Y is Y0 + 1.
traverseNeighbors(X0,Y0,X0,Y) :- Y is Y0 - 1.
traverseNeighbors(X0,Y0,X,Y0) :- X is X0 + 1.
traverseNeighbors(X0,Y0,X,Y0) :- X is X0 - 1.


mazepath(X0,Y0,X,Y,_,Path):- X0 = X, Y0=Y,printPath(Path). %found goal print the goal

%visit all unvisited adjacent nodes.
mazepath(X0,Y0,X,Y,Matrix,Visited):-
	dfs(X0,Y0,X1,Y1,Matrix),
	\+member(visited(X1,Y1),Visited),
	mazepath(X1,Y1,X,Y,Matrix,[visited(X1,Y1)|Visited]).

