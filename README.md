# 📘 Estudos em Ruby

Este repositório contém pequenos projetos e exercícios desenvolvidos durante meus estudos da linguagem **Ruby**.  
O foco principal é aprender a sintaxe, o fluxo da linguagem e boas práticas, como **tratamento de erros**, **validação de entrada** e **organização de código**.

Os projetos aqui são propositalmente simples, mas evoluem gradualmente para refletir conceitos mais próximos de código profissional.

---

## 📂 Projetos disponíveis

### 🧮 Calculator
Uma calculadora em terminal que permite:
- Soma
- Subtração
- Multiplicação
- Divisão

**Conceitos trabalhados:**
- Estruturas de controle (`case`, `loop`)
- Entrada de dados via terminal
- Tratamento de erros com `begin / rescue`
- Validação de entradas
- Uso de `raise` para regras de negócio

📄 Arquivo: `calculator.rb`

---

### 🎮 Guess Game
Um jogo de adivinhação de palavras em terminal, onde o jogador tem tentativas limitadas e recebe dicas progressivas.

**Conceitos trabalhados:**
- Laços e controle de fluxo
- Manipulação de strings
- Validação de entrada do usuário
- Tratamento de erros (`ArgumentError`, `EOFError`)
- Separação de responsabilidades em métodos

📄 Arquivo: `guess_game.rb`

---

### 🔢 Exponent Calculator
Calculadora de potência com expoente inteiro, implementada manualmente (sem usar `**`), com foco didático.

**Conceitos trabalhados:**
- Implementação manual de algoritmos
- Regras matemáticas explícitas
- Validação de domínio
- Uso de exceções para estados inválidos
- Diferença entre `to_i` e `Integer()`

📄 Arquivo: `exponent_calculator.rb`

---

## ▶️ Como rodar os projetos

### Pré-requisitos
Ruby instalado (utilizei a versão 2.7.2)  
  Para verificar:
  ```bash
  ruby -v
  ```
Executando um script
No diretório do projeto, rode:

```bash
ruby calculator.rb
```
ou
```bash
ruby guess_game.rb
```
ou
```bash
ruby exponent_calculator.rb
```
Todos os projetos rodam diretamente no terminal (CLI).

## 🎯 Intuito do repositório
Este repositório tem como objetivo:

📚 Aprender Ruby do zero, entendendo o porquê das coisas

🧠 Desenvolver pensamento lógico e modelagem de problemas

⚠️ Aprender a lidar corretamente com erros e estados inválidos

🧱 Criar uma base sólida para projetos maiores no futuro

Ele não tem foco em frameworks (Rails, Sinatra, etc.) neste momento, mas sim em fundamentos da linguagem.
