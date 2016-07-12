class Board

  attr_reader :grid
  #grid, 10X10 by default
  def initialize(grid_array=Array.new(10){Array.new(10) {nil}})
    @grid = grid_array
  end




end