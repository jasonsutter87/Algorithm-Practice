require_relative('../sort_stack')

describe 'It should sort the stack' do
	let(:mix_stack) {[2,3,5,61,1,2,4,3]}
	let(:empty_stack) {[]}
	it 'it should stack with the smallest number on top' do
		expect(sort_stack(mix_stack)).to eq([61,5,4,3,3,2,2,1])
	end

	it 'it should return with the smallest number of 1' do
		expect(sort_stack(mix_stack).last).to eq(1)
	end

	it 'it should return nil if the stack is empty' do
		expect(sort_stack(empty_stack).last).to eq(nil)
	end
end