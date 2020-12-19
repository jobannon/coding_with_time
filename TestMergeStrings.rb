require 'minitest/autorun'	
require './MergeStrings'
require 'minitest'

class TestMergeStrings < Minitest::Test

	def test_it_passes
		s1 =  "dce"
		s2 = "cccbd"
		assert_equal "dcecccbd", MergeStrings.new.merge_strings_now(s1, s2)
		# s1 =  "super"
		# s2 = "tower"
		# assert_equal "stouperwer", MergeStrings.new.merge_strings_now(s1, s2)
	end

	def test_the_second_passes
		s1 = "super"
		s2 = "tower"
		assert_equal "stouperwer", MergeStrings.new.merge_strings_now(s1, s2)
	end

end