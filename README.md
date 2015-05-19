#hive Query Language AST code Visualizer
##HiveQL 
	HiveQL is a SQL-like language for hive.
	and AST is short for Abstract Syntax Tree
##This Visualizer
	This visualizer aims to visualize a query's AST tree using jRuby & sinatra & D3.The query parser written in JRuby wraps Apache Hive's Parser and gives out AST tree.
##Usage
	Bundle install && ruby app.rb
##Example
	visit at https://afternoon-refuge-4404.herokuapp.com
##Known issues
	the query is not checked before sending to the internal parser,so there may be a lot of 500s.
	Remember to leave out ';'.