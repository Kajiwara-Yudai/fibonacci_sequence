
require 'benchmark'

n = 35
Benchmark.bm(7) do |x|
  x.report("memo") {
    # 修正前(メモがメソッドの定義内なので効果なし)
    def fibonacci(input)
      memo = { 1=> 1, 2=> 1 }
      return memo[input] if memo.has_key?(input)
      memo[input] = fibonacci(input - 2) + fibonacci(input - 1)
    end
    fibonacci(n)
  }
  x.report("@memo") {
    # 修正後(メモがメソッドのスコープ外なので効果あり)
    @memo = { 1=> 1, 2=> 1 }
    def fibonacci(input)
      return @memo[input] if @memo
      @memo[input] = fibonacci(input - 2) + fibonacci(input - 1)
    end
    fibonacci(n)
  }
end
