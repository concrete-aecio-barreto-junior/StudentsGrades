# Voltar - pausar a saida da operacao 
def voltar
   puts "\n Pressione [ Enter ] p/ voltar... \n"
   gets.chomp
end

# Calcula media entre numeros fornecidos como args
def avg(*numbers)
    sum =  numbers.inject(0) { |sum, x| sum += x }
    count = numbers.count
    return sum / count
end

# Exibir/read conteudo do hash (cRud)
def display(hashName)
    system "clear" 
    puts "Aluno: Notas [ N1, N2, N3, Media ] cadastradas:"
    puts "----------------------------------"
    hashName.each do |a, b|
      puts "#{a}: \t #{b}"
    end
    puts "----------------------------------"
    countKeys = hashName.keys.count
    puts "[ #{countKeys} ] aluno(s) cadastrado(s)"
    voltar
end

# Cadastrar/create conteudo do hash (Crud)
def create(hashName)
    system "clear"
    puts "Digite o nome do aluno:"
    nome = gets.chomp
    if hashName[nome.to_sym].nil?
        puts "Forneca nota 1:"
        n1 = gets.chomp
        puts "Forneca nota 2:"
        n2 = gets.chomp
        puts "Forneca nota 3:"
        n3 = gets.chomp
        media = avg(n1.to_i,n2.to_i, n3.to_i)
        hashName[nome.to_sym] = [ n1.to_i, n2.to_i, n3.to_i, media.to_i ]
        puts "Aluno [ #{nome} ] cadastrado com sucesso."
    else
        puts "Aluno [ #{nome} ja cadastrado."
    end
    voltar
end

# Atualizar/updarte conteudo do hash (crUd)
def update(hashName)
    system "clear"
    puts "Qual aluno voce quer atualizar?"
    nome = gets.chomp
    if hashName[nome.to_sym].nil?
        puts "Aluno nao encontrado."
        voltar
    else
        puts "Digite a nova nota 1:"
        n1 = gets.chomp
        puts "Digite a nova nota 2:"
        n2 = gets.chomp
        puts "Digite a nova nota 3:"
        n3 = gets.chomp
        media = avg(n1.to_i,n2.to_i, n3.to_i)
        hashName[nome.to_sym] = [ n1.to_i, n2.to_i, n3.to_i, media.to_i ]
        puts "Notas do aluno [ #{nome} ] atualizadas."
    end
end

# Remove/delete conteudo do hash (cruD)
def delete(hashName)
    system "clear"
    puts "Qual aluno voce quer remover?"
    nome = gets.chomp
    if hashName[nome.to_sym].nil?
        puts "Aluno #{nome} nao encontrado."
    else
        hashName.delete(nome.to_sym)
        puts "Aluno #{nome} deletado."
    end
    voltar
end

# Declarando o hash
notas = {}

# Controle de execucao do loop
running = true

# Loop
while running

    system "clear"

    puts "O que voce deseja?"
    puts "------------------------------"
    puts " - C: create \t [ cadastrar ]"
    puts " - R: read \t [ exibir    ]"
    puts " - U: update \t [ atualizar ]"
    puts " - D: delete \t [ remover   ]"
    puts " - X: exit \t [ sair      ]"
    puts "------------------------------"

    opcao = gets.chomp.upcase

    case opcao
    when 'C'
        create(notas)
    when 'R'
        display(notas)
    when 'U'
        update(notas)
    when 'D'
        delete(notas)
    when 'X'
        running = false
        puts "Saindo do programa..."
    else
        puts "Escolha uma opcao valida"
    end

end
