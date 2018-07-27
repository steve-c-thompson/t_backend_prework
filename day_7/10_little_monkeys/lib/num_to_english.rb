module NumToEnglish
  NUM_LOOKUP = {
    1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
    10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
    16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
    20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty",
    60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety",
    # switch to Strings for the large numbers
    "00" => "hundred",
    "000" => "thousand"
  }

  def translate_num_to_String(num)
    # find magnitude / 1000 >= 1, then / 100 >= 1
    num_parts = []

    thousands = num / 1000
    if( thousands >= 1 )
      if(thousands > 20 && thousands % 10 != 0 )
        # mixed number thousands, like twenty-one
        ones = thousands % 10
        rounded_thousands = thousands / 10 * 10; # integer math to drop any ones
        num_parts << translate_mixed_tens(rounded_thousands, ones)
      else
        num_parts << NUM_LOOKUP[thousands]
      end
      num_parts << " "
      num_parts << NUM_LOOKUP["000"]

      num -= thousands * 1000
    end

    hundreds = num / 100
    if( hundreds >= 1 )
      add_space_if_required(num_parts)
      num_parts << NUM_LOOKUP[hundreds]
      num_parts << " "
      num_parts << NUM_LOOKUP["00"]

      num -= hundreds * 100
    end

    # check if we have a key for the remaining value
    if( NUM_LOOKUP.key?(num) )
      add_space_if_required(num_parts)
      num_parts << NUM_LOOKUP[num]
    else
      tens = num / 10
      if( tens >= 1 )
        add_space_if_required(num_parts)
        ones = num % 10
        num_parts << translate_mixed_tens(tens * 10, ones)
      end
    end


    str = num_parts.join

    if(str)
      str.capitalize
    end

  end

  # Need method that works for twenty-one or twenty-one thousand
  def translate_mixed_tens(tens, ones)
    val = NUM_LOOKUP[tens]
    if(ones > 0)
      val = val + "-" + NUM_LOOKUP[ones]
    end
    return val
  end

  def add_space_if_required(num_parts)
    if(num_parts.count > 0)
      num_parts << " "
    end
  end
end
