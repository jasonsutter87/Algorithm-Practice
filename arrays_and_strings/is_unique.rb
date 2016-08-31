# Implement an algorithm to determine if a string has all unique characters. 
# What if you can't use any other data structures?
def is_unique(string)
	unique = ""
	string.chars do |char|
		if unique.include?(char) == false
			unique << char
		end
	end

	string.length == unique.length ? true : false 
end


