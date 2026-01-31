puts "Calculadora em Ruby (Soma)"

puts "Selecione a operação que deseja utilizar:"
puts "1 - Soma"
puts "2 - Subtração"
puts "3 - Multiplicação"
puts "4 - Divisão"
puts "5 - Sair\n "

opcao = gets.chomp()

if opcao != "5"

    print "Digite o primeiro valor: "
    num1 = gets.chomp().to_f

    print "Digite o segundo valor: "
    num2 = gets.chomp().to_f

    resultado = 
        case opcao
        when "1"
            num1 + num2
        when "2"
            num1 - num2
        when "3"
            num1 * num2
        when "4"
            num1 / num2
        else
            puts "Opção inválida!"
        end

    puts "Resultado: #{resultado}"
    puts
end

if opcao == "5"
    puts "Programa encerrado!"
    return
end