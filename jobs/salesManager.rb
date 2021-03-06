$LOAD_PATH <<'.'
require 'product.rb'
require 'sale.rb'
module Sales_manager
    def generate_products
        [::Product.new(1,"Arroz",2.5), ::Product.new(2,"Feijao",2.0), ::Product.new(3,"Macarrao",2.75), ::Product.new(4,"Carne",3.0), ::Product.new(5,"Mandioca",1.5)]
    end
    public
    def create_sale_item(product)
        Sale_item.new(product.id, product.name, product.price)
    end
    def create_sale(items)
        total_price = 0
        id = 0
        total_products = items.count
        items.each do |p|
            total_price += p.price
        end
        id+=1

        Sale.new(id,total_products,total_price)
    end
    private
    def map_to_json(pro)
        {id: pro.id, product_id: pro.product_id, price: pro.price}    
    end
    public
    def response_as_json(sale, items)
        sale_hash = {
            id: sale.id,
            total_products: sale.total_products,
            total_price: sale.total_price,
            items: items.map{|pro|map_to_json(pro)}
        }
        return sale_hash
    end
end