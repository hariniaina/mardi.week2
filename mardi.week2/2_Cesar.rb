def chiffre_de_cesar(string, n)
code = ""
c = 0
l = string.length - 1
string.downcase!
for c in (0...l)

	case 
	when string[c] != " " && ascii = string[c].ord + n < 122 
		then ascii = string[c].ord + n
			code += ascii.chr 
	 
	when string[c] != " "  && ascii = string[c].ord + n > 122
	  then ascii = string[c].ord + (n - 26)
		code += ascii.chr 
	
	else
	code += string[c]

	end
end
puts code.capitalize!

end

chiffre_de_cesar("What a string!", 5)
