class FibonacciSequence
    def fibonacci_item(n)
       if n == 0 
         0
       elsif n == 1
         1
       else
         fibonacci_item(n - 1) + fibonacci_item(n - 2)
         end
    end
end
