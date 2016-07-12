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
    cell = double("cell", :is_a? => Cell)

    it "should populate all the spaces in the board with a new Cell" do 
      b.populate_with_cells
      expect(b.grid.flatten).to eq(Array.new(100){ cell })
    end

  end

end