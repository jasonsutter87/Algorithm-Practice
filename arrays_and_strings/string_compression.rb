# there are three types of edits that can be performed on a string: insert a character, remove a character, or replace a character. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string then the method should return the original string. The original string should only have (a-z) in either upper or lowercase. 

def string_compression(string)
	container = [
		[]
	]
	word = string.split('')

	word.each do |letter|
		if container[-1] == []
			container[-1] << letter
		elsif container[-1][0] == letter
			container[-1] << letter
		else
			container << Array.new
			container[-1] << letter
		end
	end
	compressed = ""
	container.length.times do |count|
		compressed = compressed + container[count][0]+container[count].length.to_s
	end

	if string.length <=  compressed.length
		string
	else
		compressed
	end
end
