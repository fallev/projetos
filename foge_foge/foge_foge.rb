require_relative 'ui'

def le_mapa (numero)
	arquivo = "mapa#{numero}.txt"
	texto = File.read arquivo
	mapa = texto.split "\n"
end

def encontra_jogador (mapa)
	caractere_do_heroi = "H"
	mapa.each_with_index do |linha_atual, linha|
		coluna_do_heroi = linha_atual.index caractere_do_heroi
		if coluna_do_heroi != nil
			return [linha, coluna_do_heroi]
		end
	end
	#não achei
end

def calcula_nova_posicao (heroi, direcao)
	heroi = heroi.dup   #Não entendi essa linha, estava bugado sem ela
	case direcao
		when "W"
			heroi[0] -= 1
		when "S"
			heroi[0] += 1
		when "A"
			heroi[1] -= 1
		when "D"
			heroi[1] += 1
	end
	heroi
end
def posicao_valida? (posicao, mapa)
	if posicao[0] < 0 || posicao[1] < 0 || posicao[0] >= mapa.size || posicao[1] >= mapa[0].size || mapa[posicao[0]][posicao[1]] == "X"
		return false
	end
	true
end


def joga (nome)
	mapa = le_mapa 1

	while true
		desenha mapa
		direcao = pede_movimento
		heroi = encontra_jogador mapa
		nova_posicao = calcula_nova_posicao heroi, direcao
		
		if !posicao_valida? nova_posicao, mapa
			next
		end

		mapa[heroi[0]][heroi[1]] = " " 
		mapa[nova_posicao[0]][nova_posicao[1]] = "H"	
		
	end
end

def inicia_fogefoge
	nome = da_boas_vindas
	joga nome
end