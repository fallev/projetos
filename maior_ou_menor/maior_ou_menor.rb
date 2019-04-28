def da_boas_vindas
	puts "Bem-vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts"\n\n\n\n\n\n" 
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def pede_dificuldade

	puts "Escolha o nível de dificuldade: (1 fácil; 5 difícil)"
	dificuldade = gets.to_i

end
def sorteia_numero_secreto (dificuldade)
	case dificuldade
	when 1	
		maximo = 30
	when 2
		maximo = 60
	when 3
		maximo = 100
	when 4
		maximo = 150
	when 5
		maximo = 200
	end
	puts "Escolhendo um número secreto entre 1 e #{maximo}..."
	numero_sorteado = 1 + rand(maximo)
	puts "Escolhido... Que adivinhar hoje nosso número secreto?"
	numero_sorteado
end

def pede_um_numero(chutes, i,limite_de_tentativas)
	puts "\n\n\n\n\n\n"
	puts "Tentativa #{i+1}"
	puts "Você já chutou: #{chutes}"
	puts "Entre com o número"
	numero_escolhido = gets.strip
	puts "Será que você acertou? Você chutou: #{numero_escolhido}" 
	numero_escolhido.to_i
end

def verifica_se_acertou(numero_secreto, chute, i)
	acertou = numero_secreto == chute
	if acertou				
		puts "Acertou! Você venceu o jogo!"
		return true
	end

	maior = numero_secreto > chute
	if i == 5
		puts "Errou! O número secreto era #{numero_secreto} O Jogo acabou\n\n\n\n\n\n"
	else	
		if maior
			puts "Errou! O Número Secreto é maior do que seu chute"
		else	
			puts "Errou! O Número Secreto é menor do que seu chute"
		end
	end
	false
end

def joga (nome, dificuldade)

	numero_secreto = sorteia_numero_secreto dificuldade

	pontos_ate_agora = 1000
	limite_de_tentativas  = 6
	chutes = []
		
	for i in 0..(limite_de_tentativas - 1)	
	  
		chute = pede_um_numero(chutes, i, limite_de_tentativas)

	    chutes << chute

	    if nome == "Klapaucius"
	    	puts "Acertou! Você venceu o jogo!"
	    	break
	    end

	    pontos_a_perder = (chute - numero_secreto).abs / 2.0
	    pontos_ate_agora -= pontos_a_perder

	    puts "pontos agora: #{pontos_ate_agora}"
		if verifica_se_acertou(numero_secreto, chute, i)
			break
		end
	end

	puts "Você ganhou #{pontos_ate_agora} pontos."

end

def nao_quer_jogar
	puts "gostaria de jogar novamente? (S - sim; N - não)"
	nao_quero_jogar = gets.strip
	nao_quero_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
	joga nome, dificuldade
	if nao_quer_jogar?
		break
	end
end

puts "Obrigado por jogar!"









































