=begin
Write a program that manages robot factory settings.

When robots come off the factory floor, they have no name. 
The first time you boot them up, a random name is generated,
 such as RX837 or BC811.

Every once in a while, we need to reset a robot to its 
factory settings, which means that their name gets wiped. 
The next time you ask, it will respond with a new random name.

The names must be random; they should not follow a predictable 
sequence. Random names means there is a risk of collisions. 
Your solution should not allow the use of the same name twice.


Problem:
Robots
- must all have unique name
- Names follow patter of letter letter digit digit digit
- collission can occur so make sure that the robot name is unique

- Need method to reset its name to get a new name
- all the same requirements for creating new robots



Examples/Test Cases: 
- Robot Class
- Constructor
  - takes no arguments
  - initializes a new robot and assigns a new random name to it
  - checks to make sure no other robots have similar name
- Instance methods
  - name
    - returns the name of the robot
  - reset 
    - gives robot a new name
    - must ensure the name is unique from other robots
- Class variable robots
  - array of all instantiated robot objects

- helper method unique
  - need method to check if a new robot name is unique from
  all other robot names
- 

- helper method to create a unique name
  - first 2 chars letters A-Z
  - second 2 chars numbers 0-9

Data Structures:
Need way to track all instantiated robot objects 
class variable as a collection of instantiated robot objects



Algorithm:
Robot constructor

- loop until valid name found 
 - generate name
  - check if name is unique 
  - regenerate random name if not
- assign robot name to new unique name

- reset instance method
- invoke the generate new name helper

- instance method to make name
- use name helper method and unique name helper
- return new name

generate name helper
- run twice
  - Generate random two char string 
  - generate from a..z
- concat results
- run three times
  - generate random character from 0-9
- concat results
- return string

check name unique?
- take 1 argument as string of Robot name
- loop over all robot names in class variable
- return true if name is not found


=end


class Robot
  attr_reader :name

  @@robots = []

  def initialize
    @name = reset
    @@robots << self
  end

  def reset
    name = create_name
    until unique?(name)
      name = create_name
    end
    self.name = name
  end

  def create_name
    name = ''
    2.times do |_| 
      name += ('A'..'Z').to_a.sample
    end
    3.times do |_|
      name += ("0".."9").to_a.sample
    end
    name
  end

  def unique?(name)
    @@robots.all? do |robot|
      robot.name != name
    end
  end

  private
  attr_writer :name
end
