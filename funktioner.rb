def count(from, to)
	if from <= to
		puts from
		sleep 0.05
		count(from + 1, to)
	end
end

#count(1,100)