def hello(name)
  "Hello, #{name}"
end
def starts_with_consonant?(s)
  if s =~ /^[AEIOU]/
    true
  else
    false
  end
end
def binary_multiple_of_4?(s)
  return false if s.empty?
  if (s =~ /^[10]*$/) && (s.to_i(2) % 4 == 0)
    true
  else
    false
  end
end

s = "100"
puts binary_multiple_of_4?(s)
