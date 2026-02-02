secret_word = "opa"
guess = ""

while guess != secret_word
  print ("Digite a palavra: ")
  guess = gets.chomp()
end

puts "Você acertou!"