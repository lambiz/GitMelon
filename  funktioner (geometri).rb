def rektangel(number, number2)
	result = number * number2
	return result
end

def kvadrat(number)
	result = rektangel(number, number)
	return result
end

def triangel(number, number2)
	result = rektangel(number, number2) / 2
	return result
end

def cirkel(radie)
	result = radie ** 2 * Math::PI
	return result
end

if ARGV[0] == "cirkel"
	puts cirkel(ARGV[1].to_f)
end

if ARGV[0] == "triangel"
	puts triangel(ARGV[1].to_f, ARGV[2].to_f)
end

if ARGV[0] == "rektangel"
	puts rektangel(ARGV[1].to_f, ARGV[2].to_f)
end

if ARGV[0] == "kvadrat"
	puts kvadrat(ARGV[1].to_f, ARGV[2].to_f)
end
