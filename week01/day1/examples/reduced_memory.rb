# This example works by aggressively deleting information it no longer
# needs for calculations. It only carries four pieces of info:
# * The previous two Fibonacci numbers
# * The next calculated value
# * The running total

x = 0
y = 1
sum = 0

while true
  n = x + y
  break if n > 4_000_000
  sum += n if n.even?
  x, y = [y, n]
end

puts sum
