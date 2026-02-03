words = ["banana", "computador", "navegador", "teclado", "internet", "morango"]
secret_word = words.sample

guess = ""
guess_count = 0
guess_limit = secret_word.length / 2
out_of_guesses = false

revealed_indexes = []

def display_word(secret_word, revealed_indexes)
  result = ""

  secret_word.chars.each_with_index do |char, index|
    if revealed_indexes.include?(index)
      result += char
    else
      result += "_"
    end
  end

  result
end

def ask_for_word(answer)
  loop do
    print answer
    input = gets

    raise EOFError, "Entrada encerrada pelo usuário." if input.nil?

    guess = input.chomp.downcase

    raise ArgumentError, "Entrada vazia não é permitida." if guess.empty?
    raise ArgumentError, "Use apenas letras." unless guess.match?(/\A[a-z]+\z/)

    return guess
  rescue ArgumentError => e
    puts "Entrada inválida: #{e.message}"
  end
end

puts "A palavra tem #{secret_word.length} letras."
puts

while guess != secret_word and !out_of_guesses
  
  if guess_count < guess_limit
    if guess_count == 0
      answer = "Digite a palavra: "
    else
      answer = "Errou! Você ainda tem #{guess_limit - guess_count} tentativa(s). Dica: #{display_word(secret_word, revealed_indexes)}\nDigite a palavra: "
    end

    begin
      guess = ask_for_word(answer)
      guess_count += 1

      available_indexes = (0...secret_word.length).to_a - revealed_indexes
      revealed_indexes << available_indexes.sample unless available_indexes.empty?
    rescue EOFError =>  e
      puts "\n#{e.message}"
      exit
    end
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