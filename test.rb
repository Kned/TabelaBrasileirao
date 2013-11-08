require 'rubygems'
require 'open-uri'
require "test/unit"
require_relative 'main'

class Test < Test::Unit::TestCase

	def setup
		@main = Main.new
		@main.pega_nome
	end

	def test_possui_nome
		assert_not_nil(@main.pega_nome)
	end

	def test_alguma_partida
		assert_not_nil(@main.pega_partida)
	end


end