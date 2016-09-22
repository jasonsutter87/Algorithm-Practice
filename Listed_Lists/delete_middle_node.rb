# Implement an algorithm to delete a node in the middle (ie , any node by the first or last node) of a single linked list.
# Input a->b->c->d
# Output a->c->d

class Node
	attr_accessor :value, :next_node
	def initialize(value, next_node)
		@value = value
		@next_node = next_node
	end
end


class LinkedList
	def self.delete_node(head_node, node_num)
		count = 0
		node = head_node
		until count == node_num
			previous = node
			node = head_node.next_node
			next_node = node.next_node
			count += 1
		end
		previous.next_node = next_node
		head_node
	end
end

#create the linked list
node4 = Node.new("D", nil)
node3 = Node.new("C", node4)
node2 = Node.new("B", node3)
node1 = Node.new("A", node2)

#show orginal linked list
p node1

#delete middle node in a linked list
p delete = LinkedList.delete_node(node1, 1)
