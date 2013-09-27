require 'optparse'
require 'ostruct'

module PrimeTable

  class OptParser

    def self.parse(params)
      options = OpenStruct.new

      parser = OptionParser.new do |opts|

        opts.banner = "Usage: example.rb [options]"

        opts.on("-n N", Integer, "print product table of N numbers") do |n|
          options.n = n
        end

      end

      parser.parse!(params)

      if params.empty?
        puts parser.help() 
        exit
      end

      options
    end

  end

end
