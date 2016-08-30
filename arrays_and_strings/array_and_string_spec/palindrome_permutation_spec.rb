require_relative('../palindrome_permutation')

describe 'Checks if a string is a permutation of a palindrome' do
	let(:tact){'tact coa'}
	let(:taco){'taco cat'}
	let(:hannah){'hannah'}
	let(:hhaann){'hhaann'}
	let(:melon){'melon'}
	let(:lemon){'lemon'}

	it 'should return true if words permutation is a palindrome' do
		expect(tact, taco).to eq(true)
	end

	it 'should return true if words permutation is a palindrome' do
		expect(hannah, hhaann).to eq(true)
	end

	it 'should return false if words permutation is not a palindrome' do
		expect(melon, lemon).to eq(false)
	end
end