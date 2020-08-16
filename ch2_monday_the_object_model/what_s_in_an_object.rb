# what_s_in_an_object.rb

class MyClass
  def my_method
    @v = 1
  end
end


obj = MyClass.new
puts obj.class
puts obj.my_method
puts obj.instance_variables

@a