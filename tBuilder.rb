require './hiveInternal.rb'
require 'rubygems'
require 'tree'
include HiveInternal

class TBuilder 
	include HiveInternal
	attr_accessor :ast_tree

  def parse(query)
	  Proc.new {
			|query|
			HiveInternal.dependencyHandle {
				a = ParseDriver.new
				@ast_tree = a.parse(query)
			}
		}.call(query)
		return @ast_tree
	end
	
	def build_ast_tree_rescursive(current_node,t)
		unless t.get_children.nil?
			t.get_children.each do |child| 
				current_node << Tree::TreeNode.new(child,child)
				build_ast_tree_rescursive(current_node[child],child)
			end
		end
	end
	
	def build_ast_tree(query)
		t = parse(query)
	  start = Tree::TreeNode.new(t,t)
	  build_ast_tree_rescursive(start, t)
	  return start
	end
end

a = TBuilder.new.build_ast_tree("select 1").print_tree
