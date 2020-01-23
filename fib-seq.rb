require 'benchmark'

def recursive_fib(n)
  if (n < 2)
    return n
  else
    return recursive_fib(n - 1) + recursive_fib(n - 2)
  end
end

puts recursive_fib(35)

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


