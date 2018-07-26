# Create a person class with at least 2 attributes and 2 behaviors.  Call all
# person methods below the class so that they print their result to the
# terminal.

#YOUR CODE HERE
class Person
  attr_reader :name, :favorite_language
  def initialize(name, favorite_language)
    @name = name
    @favorite_language = favorite_language
  end

  def write_code(language)
    if(language == favorite_language)
      puts "#{favorite_language} is my favorite!"
    else
      puts "Guess I'll do my best with #{language}"  
    end
  end

  def sleep(hours)
    puts "Zz" * hours
  end
end

pers = Person.new("Dave", "Java")
pers.sleep(6)
pers.write_code("Java")
pers.write_code("Ruby")

