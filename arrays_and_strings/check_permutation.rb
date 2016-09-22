# Given two strings, write a method to decide if one is a permutation of the other

def check_permutation(s1="", s2="")
	if s1 == s2
		true
	else
		if s1.split("").sort == s2.split("").sort
			true
		else
			false
		end
	end
end



def check_permutation_solution2(s1="", s2="")
		letters = []
		if s1.length == s2.length
			s1.split('').each do |char|
				letters << char
			end

			s2.split('').each do |char|
				if letters.include?(char) != true
					false
				end
			end
			true
		else
			false
		end
end
