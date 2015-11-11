require 'yaml'

f = File.open('test.yml','w')
YAML.dump(['one','two'],f)
f.close


#auto-close if using block
File.open('test2.yml','w') do |y|
  YAML.dump(['four'],y)
end


File.open('test.yml') do |f|
  $arr = YAML.load (f)  # use $ to let a variable be global
end

myf = YAML.load(File.open('test.yml'))
myf2 = YAML.load(File.open('test2.yml'))

puts myf
puts myf2

p $arr


#yaml method


puts [1,2,3].to_yaml

multid = [1,2,3,[3,4,5]]

#yaml
y multid