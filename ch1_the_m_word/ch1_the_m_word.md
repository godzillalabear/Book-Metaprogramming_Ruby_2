## Chapter 1 The M Word

- **language constructs**: variables, classes, methods
- in C++, run time is like ghost town, *language constructs* does not lives after run time, so you cannot add attribute for objects or modify a method during runtime
- in Ruby, you can ask *language constructs* about itself → **introspection**

```ruby
my_object.class.instance_methods(false)
#false -> list only instance methods you defined yourself
my_object.instance_variables
```

> Metaprogramming is writing code that manipulates language constructs at runtime.
