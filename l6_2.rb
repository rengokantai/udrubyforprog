IO.foreach('test.txt') do |x|
  print x
end

#Or

lines = IO.readlines('test.txt')
lines.each do |line|
  puts line
end


###########

#File class
f = File.new("newfile.txt","w")
f.puts("new","old","done")
f.close

charcount = 0
linecount = 0

f = File.new("newfile.txt","r")

while !(f.eof)
  c = f.getc()
  if(c.ord ==10) then
    linecount+=1
    puts ("End of line")
  else
    putc(c)
    charcount+=1
  end
end

puts charcount
puts linecount

##################

#Exist

if File.exist?("test.txt")&&File.exist?("C:/") then
  puts("yup")
end

if File.directory?("C:/") then
  puts("yup")
end