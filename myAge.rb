puts "Qual seu nome?"
name = gets.chomp
puts "Ano de nascimento?"
age = gets.chomp
ano = age.to_i
atual = 2021 - ano
puts "#{name}, sua idade é #{atual}"

