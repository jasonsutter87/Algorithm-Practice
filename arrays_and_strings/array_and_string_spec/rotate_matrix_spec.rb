require_relative('../rotate_matrix')

describe 'turn an array 90 degrees to the right' do
	let(:portrait){[["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]]}
	let(:portrait_90cc)[["a", "d", "g"], ["b", "e", "h"], ["c", "f", "i"]]
	

	it 'it will return a new array that has been rotated' do
		expect(rotate_matrix(portrait)).to eq(portrait_90cw)
	end
end