class Sale_item      
    attr_reader :id, :product_id, :price
    def initialize(id,product_id, price)
        @id = id
        @product_id= product_id
        @price = price
    end
end