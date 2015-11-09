#Hash basic
h1 = Hash.new
h2 = Hash.new("default")  #Add default value

h1[1] = 'one'
h1[2] = 'two'

p h1[3] #nil
p h2[3] # "default"


h3={
    'a'=>'a1',
    'b'=>'b1'
}

p h3['a']
p h3.keys
p h3.values
p h3.has_key?('a')
p h3.value?('a1w')
p h3.has_value?('b1')