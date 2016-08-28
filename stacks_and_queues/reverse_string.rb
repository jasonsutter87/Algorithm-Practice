#reverse a string using a stack and a queue

#orginal string
str = "Jason"
# expected output => "nosaJ"

#create the stack and queue
stack = []
queue = []

#split orginal string and put into an array
splitted = str.split('')

#until the splitted array is empty put the first letter into tge stack
until splitted.length == 0 
	stack << splitted.shift
end

#until the stack is empty put the last in the queue
until stack.length == 0 
	queue << stack.pop
end

#join the string in the queue array to output the final string
queue = queue.join

#view output 
p queue