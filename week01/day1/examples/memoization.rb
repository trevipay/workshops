class MemoizedFibonacciSequence
  # Seed our internal memoization with some base data.
  @@fibs = [1, 1]

  # Return the Fibonacci array up to the limit being asked for.
  def to(limit)
    memoize_to(limit)
    @@fibs.select { |i| i <= limit }
  end

  private

  # Extend our memoized singleton until we're at or above the target
  # limit.
  def memoize_to(limit)
    until @@fibs.last > limit
      @@fibs << @@fibs.last(2).sum
    end
  end
end

fib_sequence = MemoizedFibonacciSequence.new

puts fib_sequence
  .to(4_000_000)
  .select { |n| n.even? }
  .sum

puts fib_sequence
  .to(1_000_000)
  .select { |n| n.even? }
  .sum

puts fib_sequence
  .to(4_000_000)
  .select { |n| n.even? }
  .sum
