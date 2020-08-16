## Chapter 2 Monday: The Object Model

- all the *language constructs* live together in a system called **the object model**
- **open class**: you can always reopen existing classed and modify them on the fly
- Practically, we don't modify original ruby class, we generate a new class which inherit original ruby class and modify it.
- You can find methods that matches the regular expression given

    ```ruby
    > [].methods.grep /^re/
     => [:reject!, :repeated_permutation, :repeated_combination, :reject, :reverse_each, :replace, :reverse, :reverse!, :reduce, :remove_instance_variable, :respond_to?]
    ```
- You can find methods that matches the regular expression given

    ```ruby
    > [].methods.grep /^re/
     => [:reject!, :repeated_permutation, :repeated_combination, :reject, :reverse_each, :replace, :reverse, :reverse!, :reduce, :remove_instance_variable, :respond_to?]
    ```

- To minimize the dangers of **Monkeypatches**, carefully check the existing methods in a class before you define your own methods.

### Inside the object Model

- instance variables
    - `obj.instance_variables`
    - there is no connection between an object's class and its instance variables, so you can have objects of the same class that carry different instance variables.
    - think instance variables as keys and values in a hash
- methods

    ```ruby
    String.instance_methods == "abc".methods
    String.methods != "abc".methods
    ```

    - an object's instance variables live in the object itself, and an object's methods live in the object's class
- classes
    - classes are nothing but objects
    - `Class` has three instance methods: `allocate`, `new`, `superclass`

    ```ruby
    Class.superclass #=> Module
    ```

    - a class is a module with three additional instance methods (`allocate`, `new`, `superclass`)
    - module → you want it to be included somewhter
    - class → you want it to be instantiated or inherited
- constants
    - All the constants in a program are arranged in a tree similar to a file system
    - you can refer to a constant by its path
    - `::Constant` → root level constant

- the object model
    - you can `include` or `prepend` a module, the module will be in the ancestor chain
- self
    - when you call a method, the receiver becomes self
    - every time you call a private method, it must be on the implicit receiver — self
    - 

        ![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/878cc647-40ef-453f-96ee-4defc6a91de1/_2020-08-16_1.42.17.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/878cc647-40ef-453f-96ee-4defc6a91de1/_2020-08-16_1.42.17.png)

> When you call a method, Ruby looks up the method by following the "one step to the right, then up" rule and then executes the method with the receiver as self.

### refinements

```ruby
module StringExtensions
	refine String do
		def to_alphanumeric
			gsub(/[^\w\s]/, '')
 		end
	end
end
```

- active when you call `using StringExtensions` till the end of file or the end of module
- 只要有 include module 就有用？
- or the refine block itself
- still experimental, use it carefully