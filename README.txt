Example Trees
b0() -> {node,2,leaf,{node,2,leaf,leaf}}. 
b1() -> {node,2,{node,2,leaf,leaf},{node,3,leaf,leaf}}. 
b2() -> {node,2,{node,1,leaf,leaf},b1()}.

Define a function tdepth that takes a tree and measures the number of nodes in longest branch in the tree. For example, the depth of b0() and b1() is 2, and the depth of b2() is 3.

Define a function leaves that takes a tree and counts the number of leafs in the tree. For example, this function would return 4 when applied to b1().

Define a function flatten that takes a tree and returns a list of integers got by “flattening” the tree into a list. At each point in the tree you should list the numbers in the left-hand sub tree before the value at the node, and this should be before the values in the right-hand tree. 

Define a function idx that takes a tree T and a number N and returns the Nth element of T, when the elements are ordered as in question 1.3 above, and counting begins at zero. You might find it useful to define a function tnodes that counts the number of nodes in a tree T. For example, idx(b2(),0) is 1, idx(b2(),1) is 2 and idx(b2(),4) is 3.

Define a function run that takes an SSA program P and an environment E associating values with variables, that runs the program P in that environment, producing a new environment. For example, running the program above in an empty environment results in an environment where a has the value 3, b has the value 5 and c has the value 25.

Define a function unique that takes an SSA program and checks that each variable is only assigned to once.

Define a function defined that takes an SSA program and checks that each variable has a value before it is used on the right-hand side of an assignment.