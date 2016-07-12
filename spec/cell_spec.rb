require 'cell'


describe Cell do 
  
  describe "#initialize" do 
    
    let(:c) { Cell.new(3, 2) }

    it "should initialize with a row_index" do 
      expect(c.row_index).to eq(3)
    end

    it "should initialize with a column_index" do
      expect(c.column_index).to eq(2)
    end

    it "starts with no content" do 
      expect(c.content).to be_nil
    end

    specify "cleared? should be false to start" do 
      expect(c.clear).to be_falsey

    end


  end

end