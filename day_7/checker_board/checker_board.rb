class CheckerBoard
  def self.print_board(size)
    size.times do |i|       # rows
      odd = i % 2 == 1
      left = odd ? " " : "X"
      right = odd ? "X" : " "
      size.times do |j|     # cols
        print j % 2 == 0 ? left : right
      end
      puts
    end
  end
end

CheckerBoard.print_board(6)
