class FibonacciSequence
  def self.fibonacci_item(n)
    if n == 0
      return 0
    elsif n == 1
      return 1
    else
      fibonacci_item(n + 1) + fibonacci_item(n)
      end
  end
end
