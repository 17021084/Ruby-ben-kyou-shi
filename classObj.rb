class Student
  attr_accessor :name, :major, :gpa

  # constructor
  def initialize(name, major, gpa)
    @name = name
    @major = major
    self.gpa = gpa
  end

  def is_honor
    true if @gpa >= 3.6
    false
  end
end

student2 = Student.new('trung', 'it', 3.23)
student1 = Student.new('trung', 'it', 3.2)
puts student2.gpa
puts student1.gpa
puts student1.is_honor
puts student1.display
