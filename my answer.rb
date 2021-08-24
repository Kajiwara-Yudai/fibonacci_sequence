class FibonacciSequence
    def initialize
        @a = 0; @b = 1
        end
    def next 
        @a, @b = @b, @a + @b
        return @a
    end
end
fibonacci = FibonacciSequence.new

loop do 
    i = fibonacci.next()
    break if i > 100
    puts i
end
