def abc(a,b,c)
  puts '--abc--'
  a.call
  b.call
  c.call
  yield     # pass unnamed block
end


def abc2(&d)    # & must a block
  puts '--abc2--'
  d.call    #d is a named block, i.e. puts "four"
  yield  #will print twice
end


a = lambda{puts 'one'}
b = lambda{puts 'two'}
c = proc{puts 'three'}
myproc = proc{puts('myproc')}

abc(a,b,c){puts 'four'}
abc2{puts 'four'}


def foo(s)
  puts ("--in foo--")
  if block_given?   #block check
    puts "in given"
    yield(s)
  else
    puts "no block"
  end
end

foo("hello") do |x|
  x.upcase!
  puts x
end