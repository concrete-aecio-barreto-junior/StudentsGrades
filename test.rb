require_relative "./gradesStudents.rb"

describe StudentsGrades do
   describe "#avg" do
      it "average for 3 numbers" do
         averageGrades = StudentsGrades.new
         averageGrades.n1 = 6
         averageGrades.n2 = 4
         averageGrades.n3 = 2
         expect(averageGrades.average).to eq(4)
      end
   end

end

