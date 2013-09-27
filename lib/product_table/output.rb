module ProductTable

  class Output

    def initialize(number_list, product_table)
      @number_list   = number_list
      @product_table = product_table
    end

    def print_table
      puts build_table
    end

    def build_table
      @column_size = get_column_size + 2
      @base_format = "%#{@column_size}s"*@number_list.count

      format, output = build_header    ""    , []
      format, output = build_separator format, output
      format, output = build_rows      format, output

      output.flatten!
      sprintf format, *output
    end

    private

      #find element with most characters
      def get_column_size
        all_elements = (@number_list + @product_table).flatten
        all_elements.map(&:to_s).max { |element| element.length }.length
      end

      def build_header(format="", output=[])
        format += "%#{@column_size}s | " + @base_format
        output << " "
        output << @number_list
        [format, output]
      end

      def build_separator(format="", output=[])
        format += "%s"
        output << "\n" + "-" * ((@column_size * @number_list.count) + 10)
        [format, output]
      end

      def build_rows(format="", output=[])
        @product_table.each_with_index do |row, index|
          row_num = @number_list[index]
          format += "\n%#{@column_size}s | " + @base_format
          output << row_num.to_s
          output << row
        end
        [format, output]
      end

  end

end
