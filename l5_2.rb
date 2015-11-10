x=1
# do is optional
while x<10 do
  puts x
  x+=3
end

#sugar
x=1
begin
  puts x
  x+=3
end while x <2

#until = while not
x=4
until x>10 do
  puts x
  x+=3
end


#loop keyword, must use break keyword to stop

arr= [1,2,3]
i=0
loop do
  puts arr[i]
  i+=1
  if(i==arr.length) then
    break
  end
end