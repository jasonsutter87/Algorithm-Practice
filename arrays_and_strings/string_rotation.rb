# Assume you have a method isSubstring which checks if one word is a substring of another. Given two string, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring(e.g. "waterbottle" is a rotation of  "erbottlewat")
def string_rotation(s1, s2)
	matching = false
	if s1.length == s2.length
		count =  0 
		until count == s1.length
			splitted = s1.split('')
			s1 = splitted.push(splitted.shift).join
			if s1 == s2
				matching = true
			end
			count += 1
		end
	else
		false
	end
	matching
end
