def sum_of_fibs_to(prev_x = 0, prev_y = 1, sum = 0, max_term_value)
  n = prev_x + prev_y

  return sum if n > max_term_value

  sum += n if n.even?

  sum_of_fibs_to(prev_y, n, sum, max_term_value)
end

puts sum_of_fibs_to(4_000_000)
