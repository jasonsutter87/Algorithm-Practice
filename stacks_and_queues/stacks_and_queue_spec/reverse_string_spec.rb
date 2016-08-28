require_relative('../reverse_string')

describe 'reverse a string"' do
	it 'should reverse a string' do
		expect(reverse_string("Jason")).to eq("nosaJ")
	end

	it 'should reverse a sentance' do
		expect(reverse_string("I love tacos")).to eq("socat evol I")
	end
end

describe 'can handle a single letter string' do
	it 'should return the one letter' do
		expect(reverse_string("I")).to eq("I")
	end
end

describe 'can handle empty string' do
	it 'should return empty string' do
		expect(reverse_string('')).to eq("")
	end
end
