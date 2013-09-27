require 'matrix'

module PrimeTable

  class Calculator

    class << self

      def calculate_primes(count)
        return [] if count == 0
        prime_numbers = [2]
        current = 2
        while prime_numbers.size < count
          current += 1
          prime_numbers << current if is_prime?(current)
        end

        prime_numbers
      end

      def calculate_product(numbers_list)
        (Matrix[numbers_list].transpose * Matrix[numbers_list]).to_a
      end

      private

      def is_prime?(number)
        return false if number < 2
        (2..number-1).count { |n| number % n == 0 } == 0
      end

    end

  end

end
