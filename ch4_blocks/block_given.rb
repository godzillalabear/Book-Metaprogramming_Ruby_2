def a_method
  return yield if block_given?

  p 'no block'
end

a_method
a_method { p "here's a block!" }
