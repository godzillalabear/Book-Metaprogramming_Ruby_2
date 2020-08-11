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
