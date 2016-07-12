class Cell
  
  #row_index
  #col_index
  #content (either a mine or a number)
  #cleared? (whether or not it's data is hidden, initializes as false)
  #neighbors
  attr_reader :row_index, :column_index
  attr_accessor :content, :clear
  def initialize(row_index, column_index)
    @row_index = row_index
    @column_index = column_index
    @content = nil
    @clear = false
  end
end