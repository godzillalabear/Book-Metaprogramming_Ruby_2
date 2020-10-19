inc = Proc.new{ |x| x + 1 }
p inc.call(2)

dec = lambda {|x| x - 1 }
p dec.class
p dec.call(2)

# stabby lambda operator
p = ->(x) { x + 1 }
# is the sam as
p = lambda{ |x| x + 1 }
