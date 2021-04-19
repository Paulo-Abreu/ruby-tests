$LOAD_PATH <<'.'
require 'product.rb'
require 'sale.rb'
require 'saleItem.rb'
require 'salesManager.rb'
include Sales_manager
product = Sales_manager.generate_products
items = product.map{ |p| Sales_manager.create_sale_item(p)}
sale = Sales_manager.create_sale(items)


puts "A sua compra de numero: #{sale.id}, tem o total de #{sale.total_products} produtos, o total foi de: R$#{sale.total_price}"