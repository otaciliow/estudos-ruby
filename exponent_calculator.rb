def pow(base_num, exponent)
  raise ArgumentError, "Expoente negativo não é suportado!" if exponent < 0
  raise ZeroDivisionError, "Zero elevado a expoente negativo é indefinido!" if base_num == 0 and exponent < 0

  result = 1

  exponent.times do
    result = result * base_num
  end

  return result
end

def ask_integer(message)
    loop do
      print message
      input = gets

      raise EOFError, "Entrada encerrada pelo usuário" if input.nil?

      begin
        return Integer(input.chomp)
      rescue ArgumentError
        puts "Entrada inválida! Digite um número inteiro."
      end
    end
end

puts "--------------------------------------"
puts "| Cálculo de expoente inteiro (raiz) |"
puts "--------------------------------------"

begin
  num1 = ask_integer("Digite o número base: ")
  num2 = ask_integer("Digite o número expoente: ")

  resultado = pow(num1, num2)

  puts
  puts "Resultado: #{resultado}"
rescue ArgumentError, ZeroDivisionError => e
  puts
  puts"Erro: #{e.message}"
rescue EOFError => e
  puts
  puts e.message
end