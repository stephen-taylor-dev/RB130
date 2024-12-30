=begin
Problem:

  Input:
  Output:

Requirments:

Class of element 
Parameters
- integer value of element in list
- element showing the next item in the list
  - represents itmes inside the linked list

Methods
Initialize method
takes 1 or two args
- use first as dataum
- use optional argument for second
- default value should be nil

datum method
returns the value of that element data in list

next method
returns nil if no next item in list
returns element

tail? method
returns boolean whether element is teh last elemetn in the list
true if last
false if not


Class SimpleLinkedList
Element is a collaborator object with

initialiaze method
- takes no arguments
- creates an empty list

size method
- instance variable
- initialized to 0
- incremetns and decrements on push and pop
- returns number of elemetns as integer
- returns 0 if empty


empty? method
- returns boolean if list is empty

push method
- adds element to linked list
- takes at least 1 argument
  - value of element

when pushing element check if list is empty
  if so just add it to the list
otherwise 
  get the last element in the list
  link this element to the new element being added
  add the last elemetn to the list

peek method
- returns nil of not iems
- returns value of last element?

head method
- returns the first element of a list

pop method
- removes and returns the last element in a list
- copy last element
- remove the last element
- get the last eelment and set the next value to the next value of the previous head element
- return the value of the element

[3,1, 1,2, 2,nil]
to_a method
- returns a list of the values in the linked list as an array

reverse method
- must not mutate originol array 
- takes a linked list object and reveses the oreder of all the items
- creates a new empty linked list object
- loop over all elements checking if element objects from last to first
- add the element to the new list
- 

Class meeethods
from_a method
creates a new SimpleLinkedList object from an array passed as an argument
- if no arument create empty list
- for items in array loop over array pushing each item into the new list


Examples:


Data Structure
linked list is array of Element objects



Algorithm:



=end


class Element
attr_reader :datum, :next

  def initialize(datum, next_el=nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    !self.next # uses ruby truthy functionality to return true or false
  end

end


class SimpleLinkedList
  def initialize
    @head 
  end

  def size
    list.size
  end

  def empty?
    list.empty?
  end

  # returns last element or nil
  def head
    list.first
  end

  def peek
    list.last
  end

  def push(element, next_el)
    list << Element.new(element, next_el)
  end

  def pop 
    last_element = list.peak
  end

  def to_a
    
  end

  def reverse
    
  end

  def self.from_a(arr=[])
    list = SimpleLinkedList.new()
    arr.each do |i|
      list.push(Element.new(i)
    end
    
  end

  private
  attr_reader :list
end

element1 = Element.new(1) 
p element2 = Element.new(1, element1)

p element1.tail?
p element2.tail?
