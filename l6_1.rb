3.times do |i|
  puts i
end


# collect:return new array
newarr = [1,2].collect do |i|
  i*2
end

p newarr

# must be array
newstrarr = ["lowercase"].collect do |x|
  x.capitalize
end

puts newstrarr

newstr= "lowercase".split("").each do |x|
  puts x.upcase
end
####################################
#Proc,lambda

a = Proc.new do |x|
  x = x *5
  puts x
end

b = lambda do |x|
  x = x*5
  puts x
end

c = proc do |x|
  x.capitalize
end

puts a.class
puts b.class
puts c.class


#call method only one param
a.call(10)
b.call(10)
puts c.call("low")

# yield
def caps(params)
  puts "--start--"
  yield(params)
end


caps("lowcase") do |x|
  x.upcase!
  puts x
end



