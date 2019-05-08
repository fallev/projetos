class Heroi
	 attr_accessor :linha, :coluna
end

guilherme = Heroi.new
guilherme.linha = 15
guilherme.coluna = 3

puts "O guilherme está na linha #{guilherme.linha} e na coluna #{guilherme.coluna}"

carlos = Heroi.new
carlos.linha = 6
carlos.coluna = 18