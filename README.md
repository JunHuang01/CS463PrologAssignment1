The program was developed and tested in SWI-Prolog version 6.6.6 by Jan Wielemaker (jan@swi-prolog.org).

Load the program into SWI prolog,

Then run  'mazepath(X1,Y1,X2,Y2,Maze,Path)'

Where X1,Y1  and X2,Y2 are 2D Plane cordinates that is in X range of (1~N) and Y range (1~N).

the Maze is a list of list, for example  maze([[0, 0, 0, 0],
          [0, 1, 1, 0],
          [0, 1, 0, 0],
          [0, 1, 0, 1],
          [0, 0, 0, 0]]).



In case of successfully finding a path, the program will print from the first node to the last node it visited in the traversing path. It will also print out the total steps it take in the path.

In case of can not find a valid path from start to end, it will not print anything.


Example Input 1:

mazepath(0,0,3,0,[[0, 0, 0, 0],
          [0, 1, 1, 0],
          [0, 1, 0, 0],
          [0, 1, 0, 1],
          [0, 0, 0, 0]],[]).

Example Output 1:
visited(0,1)
visited(0,2)
visited(0,3)
visited(1,3)
visited(2,3)
visited(2,2)
visited(3,2)
visited(4,2)
visited(4,1)
visited(4,0)
visited(3,0)
11:is the number of steps in the path


Example Input 2:
mazepath(1,1,6,1,[[0, 0, 0, 0],
          [0, 1, 1, 0],
          [0, 1, 0, 0],
          [0, 1, 0, 1],
          [0, 0, 0, 0]],[]).

Example Outpu2:
false.
