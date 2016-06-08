# fib sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, .....
# def fib(num)
  # My solution which I believe to be O(n)
#   (0...num).inject([0, 1]) do |fib|
#     fib << fib.last + fib[-2]
#   end[num]
# end

# iterative solution from interview cake
# O(n) time and O(1) space
def fib(n)
  # edge cases:
  if n < 0
    raise Exception, 'Index was negative. No such thing as a negative index in a series.'
  elsif n == 0 || n == 1
    return n
  end

  # we'll be building the fibonacci series from the bottom up
  # so we'll need to track the previous 2 numbers at each step
  prev_prev = 0
  prev = 1
  current = prev + prev_prev

  # since we already initialized up to the 2nd number in the series
  # we take n - 2 steps ahead to reach n (.times is exclusive)
  (n - 1).times do
    current = prev + prev_prev
    prev_prev = prev
    prev = current
  end

  current
end

# recursive example from interview cake
# O(n) time and O(n) space

# class Fibber
#   def initialize
#     @memo = {}
#   end
#
#   def fib(n)
#     # edge cases:
#     if n < 0
#       raise Exception, 'Index was negative. No such thing as a negative index in a series.'
#     elsif n == 0 || n == 1
#       return n
#     end
#
#     # see if we've already calculated this
#     if @memo.include? n
#       return @memo[n]
#     end
#
#     result = self.fib(n - 1) + self.fib(n - 2)
#
#     # memoize
#     @memo[n] = result
#
#     result
#   end
# end
