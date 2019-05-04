def da_boas_vindas
	puts "Bem-vindo ao foge-foge"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def desenha (mapa)
	puts mapa
end

def pede_movimento
	puts "para onde deseja ir?"
	movimento = gets.strip
	movimento
end

def game_over
	puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
	puts "O jogo acabou! Você perdeu!"
end