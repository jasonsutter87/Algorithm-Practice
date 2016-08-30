#How would you design a stack which, in addition to push and pop has the function
# min which returns the minimum element?  Push, pop, min should all operate in O(1) time. 

# => I would design a stack that uses a temporay queue to find the highest number in the stack.
# => I would find the smallest number add the stack to the queue, then shift the numbers until the smallest is at the back
# => Then re add the numbers back into the stack and pop off the last one until there is only one left.

def higest_num_stack(stack)
	#if stack length is equal to 1 it will be the highest
	return stack[0] if stack.length == 1
	temp_queue = [] #set up the tempoary queue for sorting
	smallest = stack.min #find the minimum number in the stack
	
	# loop until the stack is empty, add the elements to the queue
	until stack.length == 0 
		temp_queue << stack.pop
	end
	
	#loop through the queue until the minimum number is on the end
	until smallest == temp_queue.last
		temp_queue.push(temp_queue.shift)
	end

	#the temporay queue becomes our new stack, and we pop off the end
	stack = temp_queue
	stack.pop
	#continue until basecase
	higest_num_stack(stack)
end
