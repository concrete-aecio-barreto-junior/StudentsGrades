require_relative "./gradesStudents"

class Interface
    def calcAverage
        grades = StudentsGrades.new
        puts "Entre 1a nota"
        n1 = gets.chomp
        grades.n1 = n1
        puts "Entre 2a nota"
        n2 = gets.chomp
        grades.n2 = n2
        puts "Entre 3a nota"
        n3 = gets.chomp
        grades.n3 = n3
        avgResult = grades.average
        puts "A media de #{n1}, #{n2}, #{n3} é: #{avgResult}"
    end
end

execControl = true

while execControl
    avg = Interface.new
    avg.calcAverage
    puts "x p/ sair"
    option = gets.chomp
    if option == 'x'
        execControl = false
    else
        system "clear"
    end

end