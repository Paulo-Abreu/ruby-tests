$LOAD_PATH <<'.'
require 'person.rb'

puts "Qual seu nome?"
name=gets.chomp

puts "Qual seu genero?"
gen = gets.chomp

while(gen!="masculino" && gen !="feminino" )
    
    puts "masculino ou feminino!"
    puts " "
    puts "Qual seu genero?"
    gen = gets.chomp
   
end

puts "Qual sua altura, em cm?"
alt = gets.chomp
med = alt.to_i
height = med / 100.0

while(height > 2 || height < 1.3)
    puts "altura invalida!"
    puts " "
    puts "Qual sua altura?"
    alt = gets.chomp
    med = alt.to_i
    height = med / 100.0
   
end


puts "Ano de nascimento?"
x = gets.chomp
year = x.to_i
atual = 2021 - year

while(atual > 80 || atual < 5)
    puts "idade invalida!"
    puts " "
    puts "Qual seu ano de nasciemnto?"
    x = gets.chomp
    year = x.to_i
    atual = 2021 - year
   
end


myp = Person.new(name, height,gen, atual)
myp.fulano(year)
