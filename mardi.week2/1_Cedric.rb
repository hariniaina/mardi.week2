
def multiples()

	tab = []

	for i in 1...1000
		if i % 3 == 0 || i % 5 == 0
			tab << i
		end
	end

puts tab.inject(0) {|x, y| x + y}

end

print multiples

