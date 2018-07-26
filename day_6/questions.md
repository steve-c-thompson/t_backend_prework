## Day 5 Questions

1. In your own words, what is a Class?

   A blueprint for modeling individual things in the world.

1. In relation to a Class, what is an attribute?
   
   Something _about_ an individual instance of the class.

1. In relation to a Class, what is behavior?

   Something an individual instance of the class _does_.

1. In the space below, create a Dog class with at least 2 attributes and 2 behaviors

   ```ruby
   class Dog
     def initialize(name, breed)
       @name = name
       @breed = breed
     end

     def bark
       "Woof. Or whatever."
     end

     def bark_at_screen(sound)
       puts sound
     end
   end

   ```

1. How do you create an instance of a class?

   `Dog.new("Winston", "Mutt")`

1. What questions do you still have about classes in Ruby?
