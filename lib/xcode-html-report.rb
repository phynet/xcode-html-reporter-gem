#!/usr/bin/env ruby 
class Reporter 
	def copyLib
	  puts 'coping file xcsummary'
	  puts Dir.pwd
	  %x[sudo cp xcsummary /usr/local/bin/xcsummary]
	end
end

rep = Reporter.new
rep.copyLib

 
