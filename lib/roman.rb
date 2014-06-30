def one_to_i(number)
	if number < 5
		return "I"*(number)
	end
end

def five_to_V(number)
	if number > 4 && number < 9
		return "V" 
	end
end

def ten_to_X(number)
	if number >9 && number < 50
		return "X" * (number/10)
	end
end

def fifty_to_L(number)
	if number >=50 && number <= 90
		return 'L'
	end
	
end

def hundred_to_C(number)
	if number >=100 && number<1000
		return "C" * (number/100)
	end
end

def hundreds_included(letter)
	letter.length.to_i*100
end

def fifties_included(letter)
	letter.length.to_i*50
end

def tenths_included(letter)
	letter.length.to_i*10
end

def fifths_included(letter)
	letter.length.to_i * 5
end

def romans(number)
	hundreds= hundred_to_C(number)
	fifties= fifty_to_L(number - hundreds_included(hundreds))
	tenths= ten_to_X ((number - hundreds_included(hundreds))- fifties_included(fifties))
	fifths= five_to_V (((number - hundreds_included(hundreds)) - fifties_included(fifties)) - tenths_included(tenths))
	units= one_to_i ((((number - hundreds_included(hundreds)) - fifties_included(fifties)) - tenths_included(tenths)) - fifths_included(fifths))
	puts hundreds+fifties+tenths+fifths+units		
end

romans(188)


