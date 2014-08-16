require 'roman'

describe 'Roman Numerals' do
	context 'Convert from numbers to Romans' do
		it '1 to be equal to I' do
			expect(one_to_i(1)).to eq "I"
		end
		it "5 to be equal to V" do
			expect(five_to_V(5)).to eq 'V'
		end
		
		it "10 to be equal to X" do
			expect(ten_to_X(10)).to eq 'X'
		end


		it '50 to be equal to L' do
			expect(fifty_to_L(50)).to eq "L"
		end

		it "100 to be equal to C" do
			expect(hundred_to_C(100)).to eq 'C'
		end

	end

	context 'is expecting ' do
		it 'II' do
			expect(one_to_i(2)).not_to eq "I"
		end

		it "XXX" do
			expect(ten_to_X(30)).to eq "XXX"
		end

	end

	context 'Romans give you a tranlated version of' do
		it 'C' do
			expect(romans(100)).to eq "C"
		end

		it '188' do 
			expect(romans(188)).to eq "CLXXXVIII"
		end
		
	end
end