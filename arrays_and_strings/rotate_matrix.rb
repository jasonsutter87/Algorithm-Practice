# given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method that can rotate an image by 90 degrees. Can you do this in one place?
def rotate_matrix(array)
	array_flipped = []
	array.transpose.each do |row|
		array_flipped << row.reverse
	end
	array_flipped
end
