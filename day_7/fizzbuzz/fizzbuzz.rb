def print_fizzbuzz(end_num = 100)

	(1..end_num).each do |num|
		found = false
		if(num % 3 == 0)
			print "Fizz"
			found = true
		end
		if(num % 5 == 0)
			print "Buzz"
			found = true
		end
		if(!found)
			print num
		end
		puts
	end
end

print_fizzbuzz
