require 'minitest/autorun'	
require 'minitest'
require 'pry'

class MergeStrings

	def new 
	end

	def merge_strings_now(s1, s2)
    @i = 0
    @new_string = [] 
    
    @s1count = {}
    @s2count = {}
    
    @s1 = s1.split('')
    @s1.each {|el| @s1count[el] == nil ? @s1count[el] = 1 : @s1count[el] += 1}
    @s2 = s2.split('')
    @s2.each {|el| @s2count[el] == nil ? @s2count[el] = 1 : @s2count[el] += 1}

		until @s1.size.zero? && @s2.size.zero? do

			if @s1count[@s1[@i]].nil? 
				current = 1
			elsif @s2count[@s2[@i]].nil?
				current = -1
			else
				current = @s1count[@s1[@i]] - @s2count[@s2[@i]] 
			end

			if current < 0
					@new_string << @s1.shift 
			elsif current > 0
					@new_string << @s2.shift
			elsif current == 0
				if @s1[@i] < @s2[@i]
					@new_string << @s1.shift
				else
					@new_string << @s2.shift
				end
			end

    end

    return @new_string.join
	end
end