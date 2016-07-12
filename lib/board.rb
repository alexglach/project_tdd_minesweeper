require_relative 'cell'

class Board

  attr_reader :grid
  
  def initialize(grid_array=Array.new(10){Array.new(10) {nil}})
    @grid = grid_array
  end

  def populate_with_cells
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        @grid[row_index][column_index] = Cell.new(row_index, column_index)
      end
    end
  end

  def set_mine_coordinates
    output_array = []
    9.times do
      row_index = rand(10)
      column_index = rand(10)
      output_array << [row_index, column_index]
    end
    output_array
  end



end