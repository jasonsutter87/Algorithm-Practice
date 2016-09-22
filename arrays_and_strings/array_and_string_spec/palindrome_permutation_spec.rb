require_relative('../palindrome_permutation')

describe 'Checks if a string is a permutation of a palindrome' do
	let(:taco){'taco cat'}
	let(:hannah){'hannah'}
	let(:melon){'melon'}
	let(:lemon){'lemon'}

	it 'should return true if words permutation is a palindrome' do
		expect(palindrome_permutation(taco)).to eq(true)
	end

	it 'should return true if words permutation is a palindrome' do
		expect(palindrome_permutation(hannah)).to eq(true)
	end

	it 'should return false if words permutation is not a palindrome' do
		expect(palindrome_permutation(lemon)).to eq(false)
	end
end