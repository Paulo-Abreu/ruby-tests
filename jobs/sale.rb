
class Sale
    attr_reader :id, :total_products, :total_price
    def initialize(id,total_products, total_price)
        @id = id
        @total_products = total_products
        @total_price = total_price
    end
end