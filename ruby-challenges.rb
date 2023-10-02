# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns an array of all the words containing that particular letter. Use the test variables provided.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

filter_letter_o = 'o'
# Expected output: ['coffee', 'soda water']
filter_letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']

# Pseudo code:
=begin
Method name: grabCharacter
input: array of string elements and a variable containing single character
output: string that corresponds to matching character passed into the method
process:
1) Created a method that takes in a string and array
2) Make an empty array literal to store the new elements that match to the corresponding letter.
3) loop through the array using a for each loop, another version of a standard loop similar to javascript, this for each loop will have a value inside the pipes to match the elements inside the array. 
4) As the loop iterates over the array, the include? method will check if there is matching letter that connects to any of the string
elements inside the array. 
5) Lastly, if the condition it true, the value that is a succesful match will be pushed to the empty array literal. A way this works in ruby
is similar to javascript, however, instead of using push(), a double less than symbol (<<) is used to add elements to an array. 
=end

def grabCharacter arr, singleLetter
    new_arr = [] 
    arr.each do |i|
        if (i.include?(singleLetter))
            new_arr << i
        end
    end

     new_arr;
end
p grabCharacter beverages_array, filter_letter_o 
p grabCharacter beverages_array, filter_letter_t


# -------------------2) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
=begin
 Method Name: mergeHashValues
  input: Single Ruby hash that holds multiple nested arrays inside ruby symbols.
  output: A single Ruby array that holds all the strings of different states in America
  process: 1) To begin, the hash hold multiple symobls and nested arrays, since the output is expecting all nested arrays 
  to be merged as one single array, we first need to store that code inside a ruby method known as "mergeHashValues." Inside 
  this method, will have it take in the ruby hash itself as a method input/parameter known as "hash." 
  2) The next step is to make the logic in the method block. Since the output is asking for the array to only display the values from the symbol, not the key name itself, we can achieve this by chaining the input name hash, and a built in ruby hash method "value," that will only grab the values of each symbol. 
3)Next, we will remove all the nested arrays and merge them into one single array using a built another built in ruby method "flatten." The key to using flatten in this code is requiring the argument to have a specific integer argument 2. In this case, it will zero based index count to the last key inside the hash and merge all the arrays into one.
4) Finally, the sort() method will order the new array string elements in alphabetical order.
=end

def mergeHasheValues hash #ruby method that takes in the input "hash"
    hash.values.flatten(2).sort() #Chained ruby methods that grabs each individiual value and merges them into one.
  end
  p mergeHasheValues us_states #calling the method with the actual object name as its parameter
  

# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'

# Pseudo code for 3a:
=begin
  Method: class name "bike", initialze, and bike_info to print instance variables using string interpolation
  input: Ruby class object that holds initializer method to store the instance variables and a bike_info method to print a string statement
  output: A ruby string statement that prints 'The Trek bike has 2 wheels and is going 0 mph.'
  process: 1) To print a string sentence using Obect Oriented Programming. First, we must make the class itself and call it "bike." 
  2) Afterwards, we must store the instance variables inside of a initializer method so we can use these instances to reference inside the string interpolation method "bike_info." This method will plug in the instance variables @model, @wheels, and @current_speed. Since the last two instances are given a pre made values such as 2 and 0. @Wheels and @current_speed do not have be stored/declared inside the initialize method parameters. 
  3) Finally after fitting the instances inside the bike_info method block using #{} string interpolation. We can call the bike class with a instanziation object known as "my_bike." From here, the class is called by chaining its name "Bike" to a "new" keyword and adding the corresponding arguments. Finally the instanziation method is called and chained to the "bike_info" method to print the string.
=end
class Bike 
    #Intializer method to store the instance variables. 
    def initialize(model) #model is not given a value right away so it can be stored in the parameters
      #instance variables are stored inside the method block
      @model = model
      @wheels = 2
      @current_speed = 0
    end
    #bike method will plug is created to store the instance variables in a string.
    def bike_info
     "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
    end
  end

  #initialization will be used to call the "Bike" class and match the corresponding arguments
my_bike = Bike.new("Schwinn")
puts my_bike.bike_info

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code for part 3b:
=begin
class name: bike
input: multiple class methods that use arithmetic functionality
output: number value that will show the increased or decreases speed of a pedal bike
process: 1) Add a second method inside the bike class known as "pedal_faster." This method will take the instance variable of @current_speed, and use an additional assignment operator to increment the @current_speed instance. 
2) Next, the pedal_faster method will take in an input of a number and add that input inside the additional assignment statement that is connected to @currrent_speed. This works so when the method is called, the argument that is passed will instantly be added.
3) Now that the method is called twice and added, we can make the decreased method "brake." This method will ensure that the the values that arithmetic values stored inside the pedal_faster method, will be subtracted. Inside the brake method, @current_speed will be variable that has the value of the current_speed - the integer value that is passed into the brake method.
4) Finally, current_speed variable will hold a .max method at the end of the method, alongsdide the second argument zero. This is to ensure that when the method is called, the answer will never hit a negative value of zero, and will be reassgned back to zero if it does.
=end

class Bike 
  
    def initialize(model)
      @model = model
      @wheels = 2
      @current_speed = 0
    end
  
    def bike_info
     "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
    end
  
    def pedal_faster (increased_speed)
      #The add/incrementation operator will add and re update the addition of the pedal_faster method
      @current_speed += increased_speed
    end
  
    def brake (decreased_speed)
      #
      @current_speed = [@current_speed - decreased_speed, 0].max
    end
  end
  
  my_bike = Bike.new("Schwinn")
  
  my_bike.bike_info
  
  puts my_bike.pedal_faster(10)
  puts my_bike.pedal_faster(18)
  puts my_bike.brake(5)
  puts my_bike.brake(25)