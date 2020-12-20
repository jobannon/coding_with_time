require 'minitest/autorun'
require './FirstDuplicate'
require 'minitest'

class TestFirstDuplicate < Minitest::Test

	def test_it_passes
		a = [2, 1, 3, 5, 3, 2]
		assert_equal 3, FirstDuplicate.new.firstDuplicateNow(a)
	end

	def test_it_handles_negative_numbers
		a = [2, 4, 3, 5, 1]
		assert_equal -1, FirstDuplicate.new.firstDuplicateNow(a)
	end

	def test_simple_case
		a = [2, 2]
		assert_equal 2, FirstDuplicate.new.firstDuplicateNow(a)
	end

end