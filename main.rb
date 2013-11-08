require 'rubygems'
require 'open-uri'
require_relative 'buscadedados'

class Main
		
	@busca_dados = Busca_Dados.new
	@busca_dados.busca_time
end

#main = Main.new
#main.setup