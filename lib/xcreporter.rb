#!/usr/bin/env ruby 
require 'fileutils'

class Reporter 
	def copyLib
	  dest_folder = "/usr/local/bin/"
	  puts 'coping file xcsummary in ' + dest_folder
	  pathFile = Dir[File.dirname(__FILE__)]
	  pathFile.each do |filepath|
	  	name = 'xcsummary'	
	  	FileUtils.cp(filepath+"/#{name}", dest_folder+"/#{name}")
	  end
	end
end


rep = Reporter.new
rep.copyLib

 
