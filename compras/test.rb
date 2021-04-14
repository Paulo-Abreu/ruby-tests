class Product
    attr_reader :name, :price, :description, :counter

    def initialize(counter,name,price,description="pao frances")
        @counter = counter
        @name = name
        @price = price
        @description = description
    end
    def view
        puts "#{@counter} - #{@name} - R$#{@price} - #{@description}"
    end
end

       

