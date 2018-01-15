def fibonacci
  Enumerator.new do |y|
    a = b = 1

    loop do
      y << a
      a, b = b, a + b
    end
  end
end

puts fibonacci.take_while { |i| i < 4_000_000 }.select(&:even?).sum
