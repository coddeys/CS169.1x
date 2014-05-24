def sum(a)
  sum = 0
  a.each do |x|
    sum += x
  end
  sum
end

def max_2_sum(a)
  sum = 0
  return 0 unless a.any?
  x,i = a.each_with_index.max
  a.delete_at(i) if a.any?
  y,i = a.each_with_index.max
  if a.any?
    x + y
  else
    x
  end
end

def sum_to_n?(a,n)
  a.each_with_index do |x,i|
    b = a
    b.delete_at(i)
    b.each do |y|
      return true if x + y ==n
    end
  end
  return false
end
