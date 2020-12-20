require 'pry'

class FirstDuplicate
	def firstDuplicateNow(a)
			@builder = Hash.new()
			
			a.each_with_index do |ele, i|
					if @builder[ele].nil? 
						@builder[ele] = [1, i] 
					else
						@builder[ele][0] += 1
						@builder[ele][1] = i 
					end
			end
			builder_sorted = @builder.sort_by { |k,v| [v[0], -v[1]] }
			if builder_sorted.last[1][0] == 1
				return -1
			else
				builder_sorted.last[0]
			end
	end	
end 