# proc_lamda.rb
require 'byebug'

inc_proc = Proc.new { |x| x + 1 }
p inc_proc.lambda?
# p inc_proc.class
# p inc_proc.class.superclass
# p inc_proc.proc?

inc_lambda = lambda { |x| x + 1 }
p inc_lambda.lambda?
# p inc_lambda.proc?

inc_proc_block = proc { |x| x + 1}
p inc_lambda.lambda?