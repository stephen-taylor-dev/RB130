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



# class Example
#   attr_writer :value
#   def initialize(value)
#     @value = value
#   end

#   def update_value
#     p value  # `self` is required to call the setter
#   end

#   private

#   attr_accessor :value
# end

# example = Example.new(50)
# example.update_value
# # example.value = 42  # Error: private method `value=` called

# snacks = ['scone', 'flapjack']

# def a_method
#   puts 'Is a_method in the binding or outside?'
# end

# 1.times do |i|
#   puts snacks
#   a_method
#   # b_method
#   # puts more_snacks
#   puts CAT
# end

# # a_variable = Proc.new do
# #   puts snacks
# #   a_method
# #   b_method
# #   puts more_snacks
# # end

# more_snacks = 'teacake'

# def b_method
#   puts 'Is b_method in the binding or outside?'
# end

# a_variable.call
# CAT = 3


# def greeting
#   puts "Hello there, #{yield}!"
# end

# name = "Stephen"

# greeting { name }



# def perform_operation(&block)
#   puts "Output of explicit block invocation is #{block.call}."
# end

# perform_operation{ 5 * 5 }


# def salutation(name)
#   "Salutations to #{name}!"
# end

# name = "Taylor"

# salutation1 = Proc.new { salutation(name)}

# puts salutation1.call


# def calculate(factor)
#   Proc.new { |x| x * factor}
# end
  
# calulation1 = calculate(8)
# puts calulation1.call(3) # 24
# 
# def perform_operation(&block)
#   puts "Output of explicit block invocation is #{block.call}."
# end
# name = "Stephen"
# perform_operation{ |name| 5 * 5  }

# arr = ["cat", "cow", "chicken"]

# person1 = "Stephen"

# def hello(name)
#   puts "Hello #{name}"
# end

# proc1 = Proc.new do
#   puts person1
#   hello(person1)
#   goodbye(person1)
#   big_hello_world
#   # puts person2
# end

# def goodbye(name)
#   puts "Goodbye #{name}"
# end

# person2 = 'John'

# def big_hello_world
#   puts "HHHHEEEELLLLLLLOOOOOOO WWWOOOOOORRRRLLLLLDDDDD!!!!!!!!!!"
# end

# proc1.call

# require 'minitest/autorun'

# class Dog
#   attr_accessor :name, :breed

#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end

#   def bark
#     "#{name} is barking."
#   end
# end


# class DogTest < Minitest::Test
#   def setup
#     @dog1 = Dog.new("Rex", "Bulldog")
#     @dog2 = Dog.new("Kyle", "Lab")
#   end

#   def test_is_dog
#     assert_instance_of(Dog, @dog1)
#   end

#   def test_name
#     assert_equal(@dog1.name, 'Rex')
#   end

#   def test_raises_error
#     assert_raises(ArgumentError) {
#       Dog.new("Buck")
#     }
#   end

  
# end
# # 
# def list(input)
#   input.call
# end

# snacks = ['scone', 'flapjack']

# def a_method
#   puts 'Is a_method in the binding or outside?'
# end

# a_variable = Proc.new {
#   puts snacks
#   a_method
#   b_method
#   # puts more_snacks
# }

# more_snacks = 'teacake'



# def b_method
#   puts 'Is b_method in the binding or outside?'
# end
# list(a_variable)
# 

def greeting(name)
  yield(name) if block_given?
end

greeting("Stephen") do |name, location| 
  puts "Hello #{name} from #{location}"
end