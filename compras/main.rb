$LOAD_PATH <<'.'
require 'product.rb'
prod = ["Pao", "Margarina", "Mortadela","Queijo Mussarela","Doce de leite"]
prodPrice = [2.0, 3.50, 2.0, 2.0, 3.0]
carrinho = 0
ver = 0

while(ver==0)
    puts " "
    puts "Bem vindo a nossa loja escolha um produto!"
    puts " "

    pro = Product.new(0, prod[0], prodPrice[0] ,"pao frances")
    puts pro.view
    pro = Product.new(1, prod[1], prodPrice[1] ,"Margarina Doriana")
    puts pro.view
    pro = Product.new(2, prod[2], prodPrice[2] , "Morgadela defumada")
    puts pro.view
    pro = Product.new(3, prod[3], prodPrice[3] , "Queijo mussarela artesanal")
    puts pro.view
    pro = Product.new(4, prod[4], prodPrice[4] , "Doce de leite Amarelo")

    puts " "
    puts "Escolha um produto da loja! "
    choose = gets.to_i
    puts " "
    puts "Produto selecionado: #{prod[choose]}, Preco a pagar:  #{prodPrice[choose]}"
    carrinho += prodPrice[choose]
    puts " " 
    puts "Seu debito ate agora e de: #{carrinho}"
    puts " "
    puts "Deseja pagar? ou continuar comprando?"
    puts " "
    puts " 1 - Pagar   2 - Continuar Comprando!"
    keep = gets.to_i
    puts " "
    if keep == 1
        ver +=1
        puts "O total de sua compra e de: #{carrinho}"
    end
end




