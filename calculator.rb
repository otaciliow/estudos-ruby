def menu
    puts "x---------------------x"
    puts "| Calculadora em Ruby |"
    puts "x---------------------x"
    puts
    puts "1 - Soma"
    puts "2 - Subtração"
    puts "3 - Multiplicação"
    puts "4 - Divisão"
    puts "5 - Sair"
    puts
    print "Selecione a operação que deseja utilizar: "
end

def pedir_valor(mensagem)
    print mensagem
    gets.chomp().to_f
end

def exibir_opcao_selecionada(mensagem)
    puts
    puts mensagem
    puts
end

loop do
    menu
    opcao = gets.chomp

    mensagem = 
        case opcao
        when "1"
            "Cálculo de soma"
        when "2"
            "Cálculo de subtração"
        when "3"
            "Cálculo de multiplicação"
        when "4"
            "Cálculo de divisão"
        when "5"
            break
        else
            "Opção inválida!"
        end

    exibir_opcao_selecionada(mensagem)
    
    num1 = pedir_valor("Digite o primeiro valor: ")
    num2 = pedir_valor("Digite o segundo valor: ")

    resultado =
        case opcao
        when "1"
            num1 + num2
        when "2"
            num1 - num2
        when "3"
            num1 * num2
        when "4"
            num2 == 0 ? "Erro: divisão por zero" : num1 / num2
        end

    if resultado.is_a?(Numeric)
        puts "Resultado: #{resultado.round(2)}"
    else
        puts resultado
    end
    
    puts
end

puts
puts "Programa encerrado!"