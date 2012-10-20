require_relative "carta"


describe "Poker" do 
	context "Carta" do
		it "Retorna valor 5 e naipe :hearts com 5H" do
			carta = Carta.new("5H")
			carta.valor.should == 5
			carta.naipe.should == :hearts
		end
		
		it "Retorna valor 13 e naipe :clubs com KC" do
			carta = Carta.new("KC")
			carta.valor.should == 13
			carta.naipe.should == :clubs
		end
		
		it "Retorna valor 10 e naipe :diamonds com 10D" do
			carta = Carta.new("10D")
			carta.valor.should == 10
			carta.naipe.should == :diamonds
		end
		
		it "Tenho uma mao de cartas" do
			mao = Mao.new("5H 3C 6S 7S KD")
			mao.cartas.map(&:valor).should == [5, 3, 6, 7, 13]
			mao.cartas.map(&:naipe).should == [:hearts, :clubs, :spades, :spades, :diamonds]
		end
	end
	
	context "Mao" do
		it "Dado uma mao retorna carta mais alta" do
			mao = Mao.new("5H 3C 6S 7S KD")
			mao.cartas.map(&:valor).should == [5, 3, 6, 7, 13]
			mao.cartas.map(&:naipe).should == [:hearts, :clubs, :spades, :spades, :diamonds]
		end
	end

end