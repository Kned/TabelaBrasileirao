require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'timebean'

class Busca_Dados
				
	
		@time = Time_Bean.new
		@link = Nokogiri::HTML(open('http://globoesporte.globo.com/futebol/brasileirao-serie-a/'))
		
		for i in 0..19
			puts @time.nome = @link.css('a.theme-color-hover strong')[i].text
		end

=begin
	
rescue Exception => e
	
end
	def	nome_do_time
		for i in 0..19
			puts @time.nome = @link.css('a.theme-color-hover strong')[i].text
		end
	end

	def	quantidade_de_partidas
		for i in 0..19
			puts @time.qtd_partidas = @link.css('a.theme-color-hover strong')[i].text
		end
	end
=end

end

