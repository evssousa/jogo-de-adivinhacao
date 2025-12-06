def limpar_tela
  if RUBY_PLATFORM =~ /win32|win64|\.net/
    system 'cls'
  else
    system 'clear'
  end
end

def msg_inicial
    puts "=== SEJA BEM-VINDO AO JOGO DE ADIVINHAÇÃO! ==="
    puts "======= Acerte o número e se divirta! ========"
    puts "=============================================="
end

def start
    msg_inicial()
    numero_secreto = rand(1..100)
    contador = 0
    numero = 0

    while numero != numero_secreto
        print "Digite um número entre 1-100: "
        numero = gets.chomp.to_i
        puts  "=" * 46
        
        if numero == numero_secreto
            limpar_tela()
            msg_inicial()
            puts "Você adivinhou o número, parabéns!"
            puts "Quantidade de tentativas: #{contador}"
        else
            limpar_tela()
            msg_inicial()
            contador += 1
            puts "Você errou o número, tente novamente."
            puts "Tentativas: #{contador}"
            puts  "=" * 46
        end
    end

end

start()