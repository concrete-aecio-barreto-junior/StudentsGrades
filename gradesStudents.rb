class StudentsGrades
    attr_accessor :n1
    attr_accessor :n2
    attr_accessor :n3

    def average
        sumNs = n1.to_i + n2.to_i + n3.to_i
        avgResult = sumNs / 3
        return avgResult
    end
end
