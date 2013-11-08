require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mongo'
require_relative 'timebean'



class Busca_Dados
	
	def initialize
		@time = Time_Bean.new
		@link = Nokogiri::HTML(open('http://globoesporte.globo.com/futebol/brasileirao-serie-a/'))
	end

	def	busca_time
		for i in 0..19
			@time.nome = @link.css('a.theme-color-hover strong')[i].text
			@time.qtd_pontos = @link.css('tr.linha-classificacao td.coluna-p')[i].text
			@time.qtd_partidas = @link.css('tr.linha-classificacao td.coluna-j')[i].text
			@time.qtd_vitorias = @link.css('tr.linha-classificacao td.coluna-v')[i].text
			@time.qtd_empates = @link.css('tr.linha-classificacao td.coluna-e')[i].text
			@time.qtd_derrotas = @link.css('tr.linha-classificacao td.coluna-d')[i].text
			@time.qtd_gol_pro = @link.css('tr.linha-classificacao td.coluna-gp')[i].text
			@time.qtd_gol_contra = @link.css('tr.linha-classificacao td.coluna-gc')[i].text
		end
	end

	def method_name
		
	end
end

