# There are three types of edits that can be performed on strings insert a character, remove a character, or replace a character. given two strings, write a function to check if they are one edit or zero edits away

# example: pale, ple => true
#          cake, bake => true
#          cat, dog => false
#          cake, cakess => false

def one_array(s1, s2)
	if s1 == s2
		true
	else
		if s1.length > s2.length + 1 || s1.length < s2.length - 1
			false
		else
			count = 0
			s2.chars.each do |char|
				if s1.include?(char) != true
					count += 1
				end
			end

			if count > 1
				false
			else
				true
			end

		end
	end
end





