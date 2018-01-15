fibs = [1, 1]

until fibs.last > 4_000_000
  fibs << fibs.last(2).sum
end

puts fibs
  .select { |n| n.even? }
  .sum
