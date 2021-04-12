

puts "Informe o valor de 1 a 10 "
valor =  gets.to_i
valores = 1..10.to_i
puts " "
if valor >10 || valor < 1
    puts "ta maluco!"
else
    valores.each do |y| 
        resultado = valor*y
        puts"#{resultado}"
    end
end

