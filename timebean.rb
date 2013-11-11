class Clube

	def initialize nome, qtd_pontos, qtd_partidas, qtd_vitorias, qtd_empates, qtd_derrotas, qtd_gol_pro, qtd_gol_contra
		@nome = nome
		@qtd_pontos = qtd_pontos
		@qtd_partidas = qtd_partidas
		@qtd_vitorias = qtd_vitorias
		@qtd_empates = qtd_empates
		@qtd_derrotas = qtd_derrotas
		@qtd_gol_pro = qtd_gol_pro
		@qtd_gol_contra = qtd_gol_contra
	end

	attr_accessor :nome
	attr_accessor :qtd_pontos
	attr_accessor :qtd_partidas
	attr_accessor :qtd_vitorias
	attr_accessor :qtd_empates
	attr_accessor :qtd_derrotas
	attr_accessor :qtd_gol_pro
	attr_accessor :qtd_gol_contra

	def pega_nome
		puts @nome		
	end

end	