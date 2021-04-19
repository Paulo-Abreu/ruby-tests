class Sale_item      
    attr_reader :id, :product_id, :price
    def initialize(product_id,product_name, price)
        @product_id = product_id
        @product_name = a=product_name
        @price = price
    end
end