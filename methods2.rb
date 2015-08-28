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
		if(nuts >= 40)
			if weekend
				return true
			else
				if nuts >= 60
					return false 
				else
					true
				end	
			end
		else
			false
		end
	end
	# TODO - write ticket

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end