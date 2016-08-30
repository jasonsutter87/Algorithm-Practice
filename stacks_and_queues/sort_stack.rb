#write a programe to sort a stack such that the smallest items are on top. You can use an additional temporay stack,
# but you may not copy the elements into any other data structure (such as an array).
# you can only use: pop, push, peek, isEmpty

arr = [1,3,33,5,2]
arr2 = []

def peek_top_stack(stack)
	stack[-1] if stack.length != 0
end

def peek_top_queue(stack)
	stack[0] if stack.length != 0
end

def isEmpty(stack)
	stack.length == 0 ? true : false 
end

def stack_to_queue(stack)
	queue = []
	until stack.length == 0
		queue << stack.pop
	end
	queue
end

# arr = [1,3,33,5,2]

# def sort_stack(stack, sorted=[])
# 	return sorted if stack.length == 0 
# 	stacks =[
# 		orginal = stack,
# 		sorted = sorted
# 		]

# 	 peeked = peek_top_stack(stacks[0])
	
# 	p [stacks[0], stacks[1]]

# 	(stacks[1].length + 1).times do
# 		if 
# 		p "is " + stacks[0].last.to_s + " larger than " +  stacks[1].last.to_s 
# 	end

# 	stacks[1] << stacks[0].pop
	
# 	sort_stack(stack, stacks[1])
# end







p sort_stack(arr)