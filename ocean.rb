# class Ocean
#   @@num = 0

#   def initialize
#     @@num += 1
#     @name = 'Ocean'
#   end

#   def self.get_num
#     @@num
#   end

# end

 
# ocean = Ocean.new

# puts Ocean.get_num # 1
# puts ocean.instance_variable_get(:@name) # Ocean


# a = 'snm'
# b = 'snm'
# c = a

# puts a.equal?(b) # false
# puts a.equal?(c) # true


# a = 1
# b = 1.0
# c = 1

# puts a.eql?(b) # false
# puts a.eql?(c) # true


# puts (0..10) === 3 # true
# puts String === 'Ocean' # true
# puts Integer === 3 # true
# puts Float === 3 # false


# puts 1 == 1.0 # true
# puts :snm == 'snm' # false



# begin
#   10 / 0
# rescue Exception => e
#   puts e.message
# else
#   puts 'in else'
# ensure
#   puts 'ensuring'
# end

# # divided by 0
# # ensuring


# def oceans *mine
#   puts mine
# end

# oceans(1,2,3) # 1, 2, 3
# oceans([1,2,3]) # 1, 2, 3
# oceans(*[1,2,3]) # 1, 2, 3

# def oceans1 **mine
#   puts mine
# end

# oceans1(a: 1, b: 2) # {:a=>1, :b=>2}
# oceans1(**{a: 1, b: 2}) # {:a=>1, :b=>2}


# (1..20).inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144


# fibonacci series
# def fibonacci upto = 5
#   ar = [0,1]
#   for datum in 1...upto
#     result = ar.last(2).inject {|f,s| f+s}
#     ar.push(result)
#   end
#   print ar
# end

# fibonacci(6)




# class Oceans0
#   def call_me_inside_oceans0
#     @name = "Oceans0"
#     puts "Inside Oceans0"
#   end
# end


# class Oceans1 < Oceans0
#   def call_me_inside_oceans1
#     puts "Inside Oceans1"
#   end
# end

# ocean = Oceans1.new
# ocean_dup = ocean.dup

# ocean_dup.call_me_inside_oceans0
# puts ocean_dup.instance_variable_get(:@name)
# puts ocean.instance_variable_get(:@name)


# class Oceans0
#   def call_me_inside_oceans0
#     @name = "Oceans0"
#     puts "Inside Oceans0"
#   end
# end

# class Oceans1 < Oceans0
#   def call_me_inside_oceans1
#     puts "Inside Oceans1"
#   end
# end

# ocean = Oceans1.new
# ocean_dup = ocean.clone

# ocean_dup.call_me_inside_oceans0
# puts ocean_dup.instance_variable_get(:@name)
# puts ocean.instance_variable_get(:@name)

# NAME = 'Ocean'
# dup_name = NAME.clone
# dup_name = 'Maurya'

# NAME = 'Snm'
# NAME = 'Water'
# name = "Ocean".freeze
# name_clone = name.clone

# name = "afsdfads"
# name_clone = 'sdfasd'

# puts name_clone

# class Ocean
#   attr_accessor :name
# end

# ocean = Ocean.new
# ocean.name = 'Ocean'
# ocean.freeze

# dup_ocean = ocean.dup
# clone_ocean = ocean.clone

# dup_ocean.name = 'Dup Ocean'
# clone_ocean.name = 'Clone Ocean' # can't modify frozen Ocean: #<Ocean:0x0000000100834bf8 @name="Ocean"> (FrozenError)



# Snms#333$!!!

# class Ocean
#   # TODO -
# end

# ocean = Ocean.new

# def ocean.singleton_ocean
#   puts 'I am inside singleton method'
# end

# dup_ocean = ocean.dup
# clone_ocean = ocean.clone
# clone_ocean.singleton_ocean
# dup_ocean.singleton_ocean # undefined method `singleton_ocean' for an instance of Ocean (NoMethodError)


# for i in 0..100
#   continue if i % 2 == 0
#   puts i
# end



# puts BasicObject.superclass

# puts Object.superclass

# puts Module.superclass

# puts Class.superclass


# class Ocean0
#   @@name = 'Ocean0'

#   def initialize
#     @name = 'Ocean0'
#   end
# end

# class Ocean1 < Ocean0

# end

# puts Ocean1.new.instance_variable_get(:@name)
# puts Ocean1.class_variable_get(:@@name)


# reverse a String iteratively and recursively
# class Ocean
#   def reverse_string str
#     # puts str.reverse
#     counter = str.length - 1
#     while counter >= 0
#       print str[counter]
#       counter -= 1
#     end
#   end
# end

# ocean = Ocean.new
# ocean.reverse_string('snmmaurya')

# class Ocean

#   def reverse_string str
#     counter = str.length - 1
#     print(str[counter])
#     return if counter <= 0
#     str.chop!
#     reverse_string(str)
#   end

# end

# ocean = Ocean.new
# ocean.reverse_string('abc')






# module OceanModule0
#   NAME = 'OceanModule0'

#   def hind
#     puts 'I am hind Ocean'
#   end

# end

# module OceanModule1
#   def pacific
#     puts 'I am pacific Ocean'
#   end

#   def hind
#     puts 'I am hind from pacific Ocean'
#   end
# end


# class OceanClass0
#   include OceanModule0
#   include OceanModule1
# end

# ocean0 = OceanClass0.new
# ocean0.hind # I am hind from pacific Ocean
# ocean0.pacific # I am pacific Ocean

# class OceanClass1
#   extend OceanModule0
#   extend OceanModule1
# end

# OceanClass1.hind # I am hind from pacific Ocean
# OceanClass1.pacific # I am pacific Ocean


# module OceanModule0
#   NAME = 'OceanModule0'

#   def hind
#     puts 'I am hind Ocean'
#   end

# end

# module OceanModule0
#   def hind
#     puts 'I am Hind Ocean'
#   end
# end

# module OceanModule1
#   include OceanModule0

#   def pacific
#     puts 'I am Pacific Ocean'
#   end
# end

# class OceanClass
#   include OceanModule1
# end

# ocean = OceanClass.new
# ocean.pacific # I am Pacific Ocean
# ocean.hind # I am Hind Ocean






# class Ocean
#   def modify bool, int, sym, flot, str, arr, hash
#     bool = false
#     int += 1
#     sym = :hind_ocean
#     flot += 1
#     str << 'Hind Ocean'
#     arr << 4
#     hash[:age] = 1000000
#   end
# end

# bool = true
# int = 1
# sym = :pacific_ocean
# flot = 1.0
# str = 'Pacific Ocean '
# arr = [1,2,3]
# hash = {name: 'Hind'}

# Ocean.new.modify(bool, int, sym, flot, str, arr, hash)

# puts "#{bool} | #{int} | #{sym} | #{flot} | #{str} | #{arr} | #{hash}"
# # true | 1 | pacific_ocean | 1.0 | Pacific Ocean Hind Ocean | [1, 2, 3, 4] | {:name=>"Hind", :age=>1000000}



# require 'benchmark'

# class Ocean
#   def test
#   end
# end
# output = Benchmark.measure do
#   ocean = Ocean.new
#   ocean.test
# end
# puts output
# This report shows the user CPU time, system CPU time, the sum of the user and system CPU times, and the elapsed real time. The unit of time is seconds.


# => bar took 0.12 ms
# foo.qux
# => qux took 1.15 ms



# products = [{name: 'Shirt', description: 'To specify the Elasticsearch URL when using the pacific'}, {name: 'T-Shirt', description: 'Hind To specify the Elasticsearch URL when using the'}, {name: 'Polo-T-Shirt', description: 'To specify the Elasticsearch Atlantic URL when using the'}]

# products.each do |product|
#   Product.create!(name: product[:name], description: product[:description])
# end

products = Product.search("laptop", fields: ["name", "description"], where: { status: 'active' })