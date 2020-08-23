@var = 'The top-level @var'

def my_method
  @var
end

p my_method

class MyClass
  def my_method
    p @var
  end
end

MyClass.new.my_method
