-module(tree).

-compile(export_all).

-record(node, {
    value,
    left,
    right
}).

b0() -> {node,2,leaf,{node,2,leaf,leaf}}.
b1() -> {node,2,{node,2,leaf,leaf},{node,3,leaf,leaf}}.
b2() -> {node,2,{node,1,leaf,leaf},b1()}.

tdepth(leaf) -> 0;
tdepth(Tree) -> 
    1 + max(tdepth(Tree#node.left), tdepth(Tree#node.right)).

leaves(leaf) -> 1;
leaves(Tree) -> 
    leaves(Tree#node.left) + leaves(Tree#node.right).

flatten(Tree = #node{}) -> 
    flatten(Tree#node.left) ++ [ Tree#node.value ] ++ flatten(Tree#node.right);
flatten(leaf) -> [].

idx(Tree, N) -> 
    lists:nth(N-1, flatten(Tree)).


