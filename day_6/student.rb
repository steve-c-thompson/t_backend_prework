class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(name=@first_name) #interesting, I can set a default value to a member variable
    puts "Hi, I'm #{name}!" #method
    puts "Hi, I'm #{@first_name}!" #instance var
  end
end

frank = Student.new

frank.first_name = "Frank"
frank.introduction
frank.introduction("Dave")
