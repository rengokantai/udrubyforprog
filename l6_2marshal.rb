#require 'marshal'

f = File.open('test.sav','w')
Marshal.dump(['one','two'],f)
f.close


#auto-close if using block
File.open('test2.sav','w') do |y|
  Marshal.dump(['four'],y)
end


File.open('test.sav') do |f|
  $arr = Marshal.load (f)  # use $ to let a variable be global
end

myf = Marshal.load(File.open('test.sav'))
myf2 = Marshal.load(File.open('test2.sav'))

puts myf
puts myf2
p($arr)