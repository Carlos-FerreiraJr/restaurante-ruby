=begin 
    restaurante 1.0.0
=end 

class Franquia 
    
    def initialize
        @restaurantes = []
        
    end
    
    def add(*restaurantes)
    for restaurante in restaurantes
        @restaurantes << restaurante 
        end
    end
    
    
    def mostrar
        for r in @restaurantes
        puts r.nome
        puts r.ano
        end
    end
    
end 


class Restaurante 
    attr_accessor :nome,:ano
    def close_account(closed)                        
       puts "account closed #{closed[:value]}, #{closed[:score]},#{closed[:coment]}"
    end
end




restaurante_1 = Restaurante.new 
restaurante_1.nome = "cozinha inglesa","Numero09"
restaurante_1.ano = "2010"

restaurante_2 = Restaurante.new 
restaurante_2.nome = "brasileirando"
restaurante_2.ano =2017

franquia = Franquia.new 
franquia.add restaurante_1 ,restaurante_2
franquia.mostrar 

restaurante_1.close_account :value =>10,:score => 50, :coment => "teste"

