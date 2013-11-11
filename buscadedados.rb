require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'timebean'


class Busca_Dados

	def initialize
		@link = ""
		@time = ""
		@link = Nokogiri::HTML(open('http://globoesporte.globo.com/futebol/brasileirao-serie-a/'))
	end

	def	busca_time
		for i in 0..19
			nome = @link.css('a.theme-color-hover strong')[i].text
			qtd_pontos = @link.css('tr.linha-classificacao td.coluna-p')[i].text
			qtd_partidas = @link.css('tr.linha-classificacao td.coluna-j')[i].text
			qtd_vitorias = @link.css('tr.linha-classificacao td.coluna-v')[i].text
			qtd_empates = @link.css('tr.linha-classificacao td.coluna-e')[i].text
			qtd_derrotas = @link.css('tr.linha-classificacao td.coluna-d')[i].text
			qtd_gol_pro = @link.css('tr.linha-classificacao td.coluna-gp')[i].text
			qtd_gol_contra = @link.css('tr.linha-classificacao td.coluna-gc')[i].text
			
			@time = Clube.new(nome, qtd_pontos, qtd_partidas, qtd_vitorias, qtd_empates, qtd_derrotas, qtd_gol_pro, qtd_gol_contra)
		end
	end

end

