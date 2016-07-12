require 'board'

describe Board do

  describe '#initialize' do

    it 'should start as a Board class' do
      expect(Board.new).to be_a Board 
    end

  end

  describe '#grid' do

    let(:b){Board.new}
    
    it 'should be an array' do
      expect(b.grid).to be_a Array
    end

    it 'should have 10 columns' do
      expect(b.grid.size).to eq(10)
    end 

    it 'should be an array of 10 arrays' do
      expect(b.grid).to eq(Array.new(10){Array.new(10) {nil}})
    end

  end

  describe "populate_with_cells" do 
    let(:b){Board.new}

    it "should populate all the spaces in the board with a new Cell" do 
      b.populate_with_cells
      new_grid = b.grid.flatten
      expect(new_grid.all?{|item| item.is_a?(Cell)}).to be true
    end

  end

  describe "set_mine_coordinates" do
    let(:b){Board.new}
    it "should create an array" do
      expect(b.set_mine_coordinates).to be_a Array
    end

    it "should be an array of size 9" do
      expect(b.set_mine_coordinates.size).to eq(9)
    end

    it "should contain arrays of two elements within the array" do
      expect(b.set_mine_coordinates[0].size).to eq(2)
    end

    it "should contain elements that are integers between 0 and 9" do
      expect(0..9).to cover(b.set_mine_coordinates[0][0])
    end

    it "should have 9 uniq coordinates" do
      expect(b.set_mine_coordinates.uniq.size).to be(9)
    end

  end

  # describe "set_mines" do
  #   let(:b){Board.new}



  # end

end