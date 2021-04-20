class Sale_item      
    attr_reader :id, :product_id, :price
    def initialize(id,product_name, price)
        @id = id
        @product_name = product_name
        @price = price
    end
end