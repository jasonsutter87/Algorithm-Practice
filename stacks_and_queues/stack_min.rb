#How would you design a stack which, in addition to push and pop has the function
# min which returns the minimum element?  Push, pop, min should all operate in O(1) time. 

# => I would design a stack that uses a temporay queue to find the highest number in the stack.
# => I would find the smallest number add the stack to the queue, then shift the numbers until the smallest is at the back
# => Then re add the numbers back into the stack and pop off the last one until there is only one left.

def higest_num_stack(array)
end