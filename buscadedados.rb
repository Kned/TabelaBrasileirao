require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'test'

# Get a Nokogiri::HTML::Document for the page we’re interested in...
class Main
				
		def initializer
		@time = Time_Bean.new	
		link = Nokogiri::HTML(open('http://globoesporte.globo.com/futebol/brasileirao-serie-a/'))
		
		for i do 0..19
			put @time.nome = link.css('a.theme-color-hover strong')[i].text		
		end
	end
end

m = Main.new
m.initializer