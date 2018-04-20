#!/usr/bin/env ruby 
require 'fileutils'

class Reporter 
	 
	def copyLib
	  dest_folder = "/usr/local/bin/"
	  pathFile = Dir[File.dirname(__FILE__)]
	  pathFile.each do |filepath|
	  	puts "\033[33mcoping file xcsummary in... #{dest_folder}\033[0m"
	  	name = 'xcsummary'	
	  	FileUtils.cp(filepath+"/#{name}", dest_folder+"/#{name}")
	  end
	  printingMessages
	end

	def printingMessages
	  puts "👍 " + " \033[32mxcsummary command installed...\033[0m"
	  puts "🤖 " +  " use it: " + "  \033[31mxcsummary -in 'yourPathTo/1_Test/action_TestSummaries.plist' -out 'yourPathTo/results.html'\033[0m"
	end
end



rep = Reporter.new
rep.copyLib

 
