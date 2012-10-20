class Carta
	attr_reader :valor, :naipe
	
	@@mapa = {
		'H' => :hearts,
		'C' => :clubs,
		'D' => :diamonds,
		'S' => :spades
	}
	
	def initialize(str)
		@valor = valor_da_carta(str[0..str.length-2])
		@naipe = @@mapa[str[-1]]
	end
	
	private
	def	valor_da_carta(v)
		return 13 if v == 'K'
		return 12 if v == 'Q'
		return 11 if v == 'J'
		return 14 if v == 'A'
		v.to_i
	end
	
end


class Mao
	attr_reader :cartas
	
	def initialize(cartas_str)
		@cartas = cartas_str.split(' ').map { |carta| Carta.new(carta) }
	end
	
	def melhor_jogada
		Jogada.new
	end
end

class Jogada
end