words = ["banana", "computador", "navegador", "teclado", "internet", "morango"]
secret_word = words.sample

guess = ""
guess_count = 0
guess_limit = secret_word.length / 2
out_of_guesses = false

puts "A palavra tem #{secret_word.length} letras. Você tem #{guess_limit} tentativas..."
puts

while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    print ("Digite a palavra: ")
    guess = gets.chomp()
    guess_count += 1
  else
    out_of_guesses = true
  end
end

if out_of_guesses
  puts "Suas tentativas acabaram! Você perdeu ;-;"
  puts "A palavra era #{secret_word}"
else
  puts "Você acertou! *-*"
end