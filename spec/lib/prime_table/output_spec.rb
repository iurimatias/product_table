require 'spec_helper'

module PrimeTable

  describe Output do

    let(:list)   { [2,3,5,7] }
    let(:matrix) {
        [ [4,   6, 10, 14],
          [6,   9, 15, 21],
          [10, 15, 25, 35],
          [14, 21, 35, 49] ] }

    let(:output) { Output.new(list, matrix) }

    describe "#print_table" do

      it "should print a table using a list as the headers and the matrix as the cells" do
        correct_output = ""
        correct_output +=   "     |    2   3   5   7"
        correct_output += "\n--------------------------"
        correct_output += "\n   2 |    4   6  10  14"
        correct_output += "\n   3 |    6   9  15  21"
        correct_output += "\n   5 |   10  15  25  35"
        correct_output += "\n   7 |   14  21  35  49"
        
        output.build_table.should == correct_output
      end

    end

  end

end
