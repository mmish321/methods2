require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end
	def test_elevenish
    assert_equal true,@m.elevenish(121)
    assert_equal false,@m.elevenish(30)
    assert_equal true,@m.elevenish(23)
    assert_equal true, @m.elevenish(-121)
  end
  def test_ice_cream_party
  	assert_equal 0, @m.ice_cream_party(4,3)
  	assert_equal 1, @m.ice_cream_party(5,5)
  	assert_equal 2, @m.ice_cream_party(8,16)
  end
  def test_squirrel_party 
  	assert_equal true, @m.squirrel_party(40, false)
  	assert_equal false, @m.squirrel_party(20, false)
  	assert_equal true, @m.squirrel_party(75, true)
  	assert_equal false, @m.squirrel_party(25, true)
  end
  def test_ticket
  	assert_equal 10, @m.ticket(5,5,6)
  	assert_equal 5, @m.ticket(5,25,15)
  	assert_equal 0, @m.ticket(1,2,3)
  end
  def test_in_order
 	assert_equal true, @m.in_order?(1,2,3,false)
  assert_equal true, @m.in_order?(2,1,3,true)
  assert_equal true, @m.in_order?(1,2,3 ,true)
  assert_equal false, @m.in_order?(4,2,1,true)
  assert_equal false, @m.in_order?(4,5,2,true)
  assert_equal false, @m.in_order?(4,2,1,false)
  assert_equal false, @m.in_order?(1,1,1,false)
  assert_equal false, @m.in_order?(1,1,1,true)
  end
  def test_less_by_ten
  assert_equal false, @m.less_by_ten?(10,10,10)
  assert_equal true, @m.less_by_ten?(10,10,-10)
  assert_equal true, @m.less_by_ten?(16,6,6)
  assert_equal true, @m.less_by_ten?(6,16,6)
  assert_equal true, @m.less_by_ten?(6,6,16)
  end
  def test_fizz_string
  	assert_equal "Fizz", @m.fizz_string("free")
  	assert_equal "Buzz", @m.fizz_string("bob")
  	assert_equal "FizzBuzz", @m.fizz_string("fizzbub")
  end
  def test_first_last_six
  	assert_equal true, @m.first_last_six([6,7,8,])
  	assert_equal false, @m.first_last_six([1,2,3])
  	assert_equal true, @m.first_last_six([7,8,6])
  	assert_equal true, @m.first_last_six([6,9,6])
  end
  def test_rotate_left
  	assert_equal [2,3,1], @m.rotate_left([1,2,3])
  	assert_equal [6,7,8], @m.rotate_left([8,6,7])
  end
  def test_double23
  	assert_equal false, @m.double23([0])
  	assert_equal false, @m.double23([0,2])
  	assert_equal true , @m.double23([2,2])
  	assert_equal true, @m.double23([3,3])
  	assert_equal false, @m.double23([])
  end 
end
