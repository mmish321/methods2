module Methods2
	
	def elevenish(int1)
		remainder = int1 % 11
		if (remainder <= 1 && remainder >= -1)
			true
		else
			false
		end
	end
	
	def ice_cream_party (inticecream, intcandy)
		if(inticecream >= 5 && intcandy >= 5)
			if (inticecream/2 == intcandy || intcandy/2 == inticecream)
				2;
			else
				1;
			end
		else
			0;
		end
	end
	
	def squirrel_party(intnuts, weekend)
		if(intnuts >= 40)
			if weekend
				return true
			else
				if intnuts >= 60
					return false 
				else
					true
				end	
			end
		else
			false
		end
	end
	def ticket(a ,b ,c)
		ab = a + b
		ac = a + c
		bc = b + c
		if ab == 10  || ac == 10 || bc == 10
			10
		else
			if (ab - 10) == bc
				5
			elsif (ab - 10) == ac
				5
			else
			0
			end
		end
	end
			
	def in_order?(a,b,c,bOk)
		if bOk
			if c > b && !(b > a) 
				true
			elsif c > b
				true
			else
				false
			end
		else
			if b > a && c > b
				true
			else
				false
			end
		end
	end

	def less_by_ten?(a,b,c)
		ab = (a - b).abs
		ac = (a - c).abs
		bc = (b - c).abs
		if ac >= 10 || ab >= 10 || bc >= 10
			true
		else
			false
		end
	end
	def fizz_string(str)
		if str.start_with?('f') && str.end_with?('b')
			"FizzBuzz"
		else
			if str.start_with?('f')
				"Fizz"
			elsif str.end_with?('b')
				"Buzz"
			else
				str
			end
		end
	end

	def first_last_six(ints)
		if ints.first == 6 || ints.last == 6
			true
		else
			false
		end

	end

	def rotate_left(ints)
		first = ints.shift
		ints << first
		ints
	end
	def double23(ints)
		if(ints.length == 2)
			if((ints.first == 2) && (ints.last == 2) || (ints.first == 3) && (ints.last == 3))
				true
			else 
				false
			end
		else
			false
		end

	end
	
	
	



end
