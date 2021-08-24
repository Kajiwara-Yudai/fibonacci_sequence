def fibonacci
    a = 0
    b = 1
    loop do
        a, b = b, a + b
        yield a
    end
end

n = 1
fibonacci do |i|
break if 100 < a
    puts "#{n} #{i}"
    n +=1
end

