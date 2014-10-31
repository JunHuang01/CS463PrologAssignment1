The program was developed and tested in SWI-Prolog version 6.6.6 by Jan Wielemaker (jan@swi-prolog.org).

Load the program into SWI prolog,

Then run  'mazepath(X1,Y1,X2,Y2,Maze,Path)'

Where X1,Y1  and X2,Y2 are 2D Plane cordinates that is in X range of (1~N) and Y range (1~N).

the Maze is a list of list, for example  maze([[0, 0, 0, 0],
          [0, 1, 1, 0],
          [0, 1, 0, 0],
          [0, 1, 0, 1],
          [0, 0, 0, 0]]).



In case of successfully finding a path, the program will print from the last node to the first node it visited in the traversing path.

In case of can not find a valid path from start to end, it will not print anything.