
def avisa_pontos_totais (pontos_totais)
	puts "Você possui #{pontos_totais}"
end

def avisa_campeao_atual (dados)
	puts "Campeão atual #{dados[0]}, pontos: #{dados[1]}"
end

def avisa_escolhendo_palavra
	puts "Escolhendo palavra secreta"
end

def avisa_palavra_escolhida (palavra_secreta)
	puts "Palavra secreta com #{palavra_secreta.size} letras... boa sorte"
	palavra_secreta
end

def avisa_chute_efetuado (chute)
	puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
	puts "Letra não encontrada"
end

def avisa_letra_encontrada (chute, total_encontrado)
	puts "Parabéns, a letra #{chute} faz parte da palavra secreta #{total_encontrado} vezes"
end

def avisa_acertou_palavra
	puts "Parabéns, você ganhou o jogo!"
	puts
	puts "       ___________      "
	puts "      '._==_==_=_.'     "
	puts "      .-\\:      /-.    "
	puts "     | (|:.     |) |    "
	puts "      '-|:.     |-'     "
	puts "        \\::.    /      "
	puts "         '::. .'        "
	puts "           ) (          "
	puts "         _.' '._        "
	puts "        '-------'       "
	puts
end

def avisa_errou_palavra
	puts "Que pena, errooou!"
end

def avisa_pontos (pontos_ate_agora)
	puts "Você ganhou #{pontos_ate_agora} pontos"
end

def da_boas_vindas
	puts "/*************************/"
	puts "/      Jogo da forca      /"
	puts "/*************************/"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def desenha_forca (erros)
	cabeca = "   "
	bracos = "   "
	corpo  = " "
	pernas = "   "
	if erros >= 1
		cabeca = "(_)"
	end
	if erros >= 2
		bracos = " |"
		corpo = " |"
	end
	if erros >= 3
		bracos = "/|\\"
		corpo = " |"
	end
	if erros >= 4
		pernas = "/ \\"
	end

	puts "  _________       \n"
	puts " |/        |      \n"
	puts " |        #{cabeca}      \n"
	puts " |        #{bracos}      \n"
	puts " |        #{corpo}      \n"	
	puts " |        #{pernas}      \n"
	puts " |                \n"
	puts "_|____            \n"
	puts "\n\n"
end

def nao_quer_jogar
	puts "deseja jogar novamente? (s/n)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativas (chutes, erros, mascara)
	puts "\n\n\n\n"
	desenha_forca erros
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
	puts "Palavra secreta: #{mascara}"
end
	
def pede_um_chute
	puts "Entre com uma letra ou palavra"
	chute = gets.strip.downcase
	puts "Será que acertou? Você chutou #{chute}"
	chute
end

def conta(texto, letra)
	total_encontrado = 0
	for caractere in texto.chars
		if caractere == letra
			total_encontrado += 1
		end
	end
	total_encontrado
end