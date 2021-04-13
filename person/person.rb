class Person
    attr_reader :name, :altura, :genero, :idade
    def initialize(name,altura,genero,idade=15)
        @name=name
        @altura=altura
        @genero=genero
        @idade=idade
    end
    def fulano(ano)
        @ano=ano
        puts "Dae, #{@name.capitalize}!, voce tem #{@idade}, nasceu em #{@ano}, sua atura é #{altura}m, seu genero é #{genero} ."
    end
end


