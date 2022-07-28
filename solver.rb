class Solver
    def factorial(number)
        if number < 0
            raise ArgumentError
        end
        if number == 0
            1
        else
            number * factorial(number - 1)
        end
    end

    def reverse(string)
        string.reverse
    end

    def fizzbuzz(number)
        if number % 3 == 0 && number % 5 == 0
            "fizzbuzz"
        elsif number % 3 == 0
            "fizz"
        elsif number % 5 == 0
            "buzz"
        else
            number
        end
    end

end