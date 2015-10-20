def even_next(n)
  n/2
end

def odd_next(n)
  (n*3) + 1
end

def next_value(n)
  n.even? ? n/2 : (n*3) + 1
end

def collatz(n)
  sequence = [n]
  begin
    n = next_value(n)
    sequence << n
  end until n == 1
  sequence
end

def longest_collatz
  longest = 0
  number = 0
  999999.downto(1) do |n|
    count = collatz(n).size
    longest, number = count, n if count > longest
  end
  number
end