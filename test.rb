require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML::Document for the page we’re interested in...

link = Nokogiri::HTML(open('http://globoesporte.globo.com/futebol/brasileirao-serie-a/'))

link.css('h3.r a').each do |tabela|
	puts tabela.content
end


