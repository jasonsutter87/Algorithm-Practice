require_relative('../string_rotation')

describe 'checks 2 strings if they are rotations of each other' do
	let(:waterbottle){'waterbottle'}
	let(:erbottlewat){'erbottlewat'}
	let(:jason){'jason'}
	let(:not_jason){'pizza&tacos'}
	
	it 'it will return true if s1 is a rotation of s2' do
		expect(string_rotation(waterbottle, erbottlewat)).to be(true)
	end

	it 'it will return false if s1 is not a rotation of s2' do
		expect(string_rotation(jason, not_jason)).to be(false)
	end
end