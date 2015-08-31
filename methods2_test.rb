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
  end
end
