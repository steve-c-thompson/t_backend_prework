# This is easy in Java because each character has a numeric value, and
# we can just add to it. For this, I'll make an array of characters
# and shift (using mod for any odd shifts)

class CaesarCipher
  def initialize
    @lower_case = ["a"]
    fill_alpha_array(@lower_case)

    @upper_case = ["A"]
    fill_alpha_array(@upper_case)
  end

  def fill_alpha_array(arr)
    25.times do |i|
      arr << arr[i].next()
    end
  end

  def encode(msg, shift)
    shift = shift % 26
    output = ""
    msg.length.times do |i|
      upper = false
      index = @lower_case.index(msg[i])
      if(!index)
        index = @upper_case.index(msg[i])
        upper = true
      end
      if(index)
        shifted = index + shift
        if(shift > 0 && shifted > 25)
          shifted -= 26
        elsif(shift < 0 && shifted < 0)
          shifted += 26
        end
        output += upper ? @upper_case[shifted] : @lower_case[shifted]
      else
        output += msg[i]
      end
    end
    return output
  end
end

p CaesarCipher.new.encode("Hello World", 5)  # right shift, appears wrong in example
p CaesarCipher.new.encode("Hello World", -5)
