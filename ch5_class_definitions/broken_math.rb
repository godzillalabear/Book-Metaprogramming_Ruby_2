# module BrokenFixnum
#   def +(num)
#     super + 1
#   end
# end

class Fixnum
  alias_method :old_plus, :+

  def +(num)
    self.old_plus(num).old_plus(1)
  end
end

puts(2 + 1)
puts(2 + 2)
puts(2 + 3)
