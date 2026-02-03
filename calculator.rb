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

def pedir_numero(mensagem)
    loop do
        print mensagem
        input = gets.chomp()

        begin
            return Float(input)
        rescue ArgumentError
            puts "Entrada inválida! Digite um número válido!"
        end
    end
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
        when "1" then "Cálculo de soma"
        when "2" then "Cálculo de subtração"
        when "3" then "Cálculo de multiplicação"
        when "4" then "Cálculo de divisão"
        when "5" then break
        else
            puts "Opção inválida! Tente novamente"
            next
        end

    exibir_opcao_selecionada(mensagem)
    
    num1 = pedir_numero("Digite o primeiro valor: ")
    num2 = pedir_numero("Digite o segundo valor: ")

    begin
        raise ZeroDivisionError if opcao == "4" and num1 == 0
        raise ZeroDivisionError if opcao == "4" and num2 == 0

        resultado =
            case opcao
            when "1" then num1 + num2
            when "2" then num1 - num2
            when "3" then num1 * num2
            when "4" then num1 / num2
            end
        
        puts "Resultado: #{resultado.round(2)}"
    rescue ZeroDivisionError
        puts "Erro: divisão por zero não é possível!"
    end
    
    puts
end

puts
puts "Programa encerrado!"