require 'benchmark'

class Fibonacci
  def initialize(length)
    @length = length
    @array = []
  end
puts Benchmark.measure {
  puts "recursive method:"
  def recursive_fib(iteration=0, sum=0, previous=1)
    if iteration < @length
      sum = sum + previous
      previous = sum - previous
      iteration = iteration + 1
      recursive_fib(iteration, sum, previous)
    else
      return sum
    end
  end
}
puts Benchmark.measure {
  puts "iterative method:"
  def iterative_fib
    if @array.empty?
      @array << 1
      @array << 0
    end
    @length.times do
      sum = @array[-1] + @array[-2]
      @array << sum
    end
    return @array[-1]
  end
}
end



fib = Fibonacci.new(35)
puts fib.recursive_fib
#puts fib.iterative_fib
