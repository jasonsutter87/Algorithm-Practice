# Write code to remove duplicates from an unsorted linked list.
# BONUS!
# How would you solve this problem if a temporary buffer is not allowed?

class Node
	attr_accessor :value, :next_node
	def initialize(value, next_node)
		@value = value
		@next_node = next_node
	end
end


class LinkedList

	def self.last(head_node)
		return head_node if head_node.next_node.nil?
		self.last(head_node.next_node)
	end

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
	
	def self.remove_dup(head_node, count=0)
		head_node
	end
end



node8 = Node.new("D", nil)
node7 = Node.new("D", node8)
node6 = Node.new("D", node7)
node5 = Node.new("A", node6)
node4 = Node.new("C", node5)
node3 = Node.new("C", node4)
node2 = Node.new("B", node3)
head = Node.new("A", node2)



p done = LinkedList.remove_dup(head)

