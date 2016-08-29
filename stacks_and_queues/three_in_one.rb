# Describe how you could use a single array to implement three stacks.
# => If you had a mix array you can iterate through the array and use 3
# => stacks to sort out differnt data types.
def three_in_one(array)
	#three empty stacks
	three_stacks = [
		num_stack = [],
		string_stack = [],
		other_stack = [],
	]
	until array.length == 0 
		if array[0].class == String #if the first value in the array is a string, do the thing.
			string_stack << array.shift
		elsif array[0].class == Fixnum || array[0].class == Float #if the first value in the array is a number, do the thing.
			num_stack << array.shift
		else#else, do the thing.
			other_stack << array.shift
		end	
	end
	#return all three stacks
	three_stacks
end