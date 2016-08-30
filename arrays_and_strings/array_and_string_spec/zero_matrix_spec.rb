require_relative('../zero_matrix')

describe 'it will zero out rows and col' do
	let(:matrix){[["a", "b", "0"], ["d", "e", "f"], ["g", "h", "i"]]}
	let(:zeros){[["0", "0", "0"], ["d", "e", "0"], ["g", "h", "0"]]}

	it 'return a new matrix with 0s replacing the row and col that the 0 was in' do
		expect(zero_matrix(matrix)).to eq(zeros)
	end
end