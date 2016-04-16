#Use site for reference?
#http://ruby-doc.org/stdlib-2.0.0/libdoc/io/console/rdoc/IO.html#method-i-getch

class SnakeGame
  attr_accessor :snake, :apple
  @@valid_movements =["up", "right", "down", "left"]

  def initialize
    @snake = "*" * 5
    @apple = "ó"
    @grid = []
    25.times do
      row = []
      80.times do
        row << " "
      end
      @grid << row
    end
  end

  def place_apple
    @grid[rand(0..24)][rand(0..79)] = @apple
  end

  def start_snake
    i = rand(0..79)
    row = rand(0..24)
    @snake.chars.each do |star|
      @grid[row][i] = star
      i += 1
    end
  end

  def draw_grid
    @grid.each do |row|
      puts "|#{row.join}|"
    end
  end

  def grow
    @snake += "*"
  end
end

game = SnakeGame.new

game.grow
# puts game.snake == "*" * 6
game.place_apple
game.start_snake
game.draw_grid
