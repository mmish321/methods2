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
  	asssert_equal false, @m.squirrel_party(25, true)
  end
end
