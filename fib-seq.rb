require 'benchmark'

def recursive_fib(n)
  if (n==0) 
    return [0]
  elsif (n==1)
    return [1]
  else 
    s = recursive_fib(n - 1)
    s.push(s[s.length - 1] + s[s.length - 2])
    return s
  end
end

puts recursive_fib(35).last

def iterative_fib(n)
  arr = [0, 1]
  for i in 2..n do
    arr.push(arr[i - 2] + arr[i -1])
  end
 return arr[n]
end

puts iterative_fib(35)


num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end


