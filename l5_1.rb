# "do" is optional
for i in [1,2,3] do
  puts i
end

[1,2,3].each do |i|
  puts i
end

for i in (1..3)
  puts i
end

for i in {1=>'one',2=>'two'}
  p i.class
  p i[0]
end
# = syntax sugar
{1=>'one',2=>'two'}.each do |i|
  p i.class
  p i[0]
end


#other sugar
0.upto(10) do |i|
  puts i
end
10.downto(0) do |i|
  puts i
end



#multid array

multiarr = [[1,2,3,4],[5,6,7,8]]
for(a,b,c,d) in multiarr
  print "#{a},#{b}"
end

#sugar
multiarr.each do |a,b,c,d|
  print "#{a},#{b}"
end