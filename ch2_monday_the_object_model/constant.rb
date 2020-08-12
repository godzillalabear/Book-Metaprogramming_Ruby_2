# constant.rb
Y = 'a root-level constant'

module MyModule

  MyConstant = 'Outer constant'
  Y = 'a constant in MyModule'

  class MyClass
    MyConstant = 'Inner constant'
    p Module.nesting

  end

  p MyModule::MyConstant
  p MyModule::MyClass::MyConstant
  p Y
  p ::Y
  p MyModule.constants
end



