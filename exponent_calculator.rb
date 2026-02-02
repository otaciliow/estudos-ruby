def pow(base_num, pow_num)
  result = 1
  pow_num.times do
    result = result * base_num
  end
  return result
end

puts "------------------------------------------"
puts "| Cálculo de expoente fracionário (raiz) |"
puts "------------------------------------------"

print "Digite o número base: "
num1 = gets.chomp().to_i

print "Digite o número expoente: "
num2 = gets.chomp().to_i

resultado = pow(num1, num2)

puts
puts "Resultado: #{resultado}"