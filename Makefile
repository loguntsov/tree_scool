all: compile run

compile: tree.beam

tree.bean: tree.erl
	erlc tree.erl

run:
	erl
