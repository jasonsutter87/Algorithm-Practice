# Given a string, write a function to check if it a permutation of a palindrome.
# Input: "Tact Coa"
# Output: "True" => "taco cat" 

str = "taco cat"

def palindrome_permutation(string)
	string =  string.split("").sort.join.downcase
	string =  string.split("").sort.join.downcase
	flag = true
	
	p string.lstrip!
	until flag == false
		check  = string[0..1].split('')
		if check[0] == check[1] && string.length != 0
			string.slice!(0,2)
		else
			flag = false
		end
	end
	p string
	if string.length >= 3
		flag = true
		until flag == false
		p check  = string[-2..-1].split('')
			if check[0] == check[1] && string.length != 0
				string.slice!(-1,-2)
				p string
			else
				flag = false
			end
		end
	end
	p string
	if string.length <= 1
		true
	else
		false
	end
end


p palindrome_permutation(str)