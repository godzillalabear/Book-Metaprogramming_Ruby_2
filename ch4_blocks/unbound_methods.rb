# unbound_methods.rb

module MyMoudule
  def my_method
    42
  end
end

unbound = MyMoudule.instance_method(:my_method)
p unbound.class

String.send(:define_method, :another_method, unbound)
p 'abc'.another_method