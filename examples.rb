# def select_method(arr)
#   counter = 0
#   result = []
#   while counter < arr.size
#     if yield(arr[counter])
#       result << arr[counter]
#     end
#     counter += 1
#   end
#   result
# end

# array = [1, 2, 3, 4, 5]

# p select_method(array) { |num| num.odd? }      # => [1, 3, 5]
# p select_method(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select_method(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
# 

# def true_or_false(&block)
#   puts "The block is #{block.call}"
# end

# true_or_false { 5 > 8 }
# 
# def welcome(str)
#   p block_given?
#   puts str + ' ' + block.call
# end

# # welcome('Hello') { 'there' } # => Hello there
# # welcome('Hey') { 'Joe' }   # => Hey Joe
# welcome('Hi!')                # => Hi! (there's a space after the !)

# require 'minitest/autorun'

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def miaow
#     "#{name} is miaowing."
#   end
# end


# class CatTest < Minitest::Test
#   def setup
#     @kitty = Cat.new('Kitty')
#   end

#   def test_is_cat; end

#   def test_name
#     assert_equal(@kitty.name, 'Milo')
#   end

#   def test_miaow; end

#   def test_raises_error; end
# end

class Example
  attr_writer :value
  def initialize(value)
    @value = value
  end

  def update_value
    p value  # `self` is required to call the setter
  end

  private

  attr_accessor :value
end

example = Example.new(50)
example.update_value
# example.value = 42  # Error: private method `value=` called
