a = 0
b = 1
loop do 
    tmp = a
    a = b
    b = tmp + b
    break if 100 < a
    puts a
end
