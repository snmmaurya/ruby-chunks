# Method to nested array into single array LIKE ruby inbuild method: flatten
def maintain_array(result, elements)
  if elements.kind_of?(Array)
    elements.each do |element|
      maintain_array(result, element)
    end
  else
    result.push(elements)
  end
end

result = [];
elements = [[1,2,3], [2,3,5,[8,[9]]]]
elements.each do |element|
  maintain_array(result, element)
end
print result;


# super vs super()
class Parent
  def greet(name)
    puts "Hello, #{name}!"
  end
end

class Child < Parent
  def greet(name)
    super  # Calls Parent#greet with the same argument
    puts "Nice to meet you!"
  end
end

Child.new.greet("Alice")
# Output:
# Hello, Alice!
# Nice to meet you!



class Parent
  def greet(name)
    puts "Hello, #{name}!"
  end
end

class Child < Parent
  def greet(name)
    super(name)  # Calls Parent#greet with no arguments
    puts "Nice to meet you!"
  end
end

Child.new.greet("Alice")
# Output:
# Hello, !
# Nice to meet you!
