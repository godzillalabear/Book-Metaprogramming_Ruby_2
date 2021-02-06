# class_variables_2.rb

@@v = 1

class MyClass
  def read
    @@v
  end

  def write(var)
    @@v = var
  end
end

class MyClass2
  def read
    @@v
  end

  def write(var)
    @@v = var
  end
end