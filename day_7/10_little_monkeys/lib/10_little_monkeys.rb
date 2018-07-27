require_relative 'num_to_english'

class MonkeyRhyme
  include NumToEnglish

  attr_accessor :rhyme, :num_lookup
  def initialize
    @rhyme = [["little monkeys jumping on the bed,", "little monkey jumping on the bed,"],
      "One fell off and bumped his head,",
      "Mama called the doctor and the doctor said,",
      ["\"No more monkeys jumping on the bed!\"", "\"Get those monkeys right to bed!\""  ]
    ]
  end

  def build_rhyme(num = 4)

    output = ""
    if(num > 0)
      num.downto(2) do |monkeys|
        monkey_str = translate_num_to_String(monkeys)
        output += build_verse(monkey_str, 0)
      end
      # one monkey
      monkey_str = translate_num_to_String(1)
      output += build_verse(monkey_str, 1)
    end
  end

  def build_verse(monkey_str, index)
    output = ""
    output += monkey_str + " " + rhyme[0][index] + "\n"
    output += rhyme[1] + "\n"
    output += rhyme[2] + "\n"
    output += rhyme[3][index] + "\n"
    output += "\n"
    output
  end

end

monkey = MonkeyRhyme.new
print monkey.build_rhyme(37)
