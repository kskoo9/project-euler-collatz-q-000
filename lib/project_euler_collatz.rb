def even_next(n)
  return n/2
end

def odd_next(n)
  3*n+1
end

def next_value(n)
  if n%2==0
    even_next(n)
  else odd_next(n)
  end
end

def collatz(n)
  collnums =[n]
  while n!= 1
    n=next_value(n)
    collnums.push(n)
#    puts "collnums #{collnums}"
  end
  return collnums
end

def longest_collatz
  answer = 0
  sequence = []
  for i in 1..999999
    if collatz(i).length > sequence.length
      sequence = collatz(i)
      answer = i
    end
  end
  return answer
end
