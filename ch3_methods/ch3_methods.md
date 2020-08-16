## Chapter 3 Methods

- In static type checking, the compiler can spot of your mistakes before the code runs, but you have to write a lot of *boilerplate methods*

### Dynamic Methods

- **Dynamic Dispatch**: decide which method to call at runtime.
- `send` → calls methods dynamically
- `define_method` → define mthods dynamically

- The `$1` is group matched from the regular expression above `/(.+)_id$/`. The `$1` variable is the string matched in the parenthesis.

### method_missing

- when a object calls a method, ruby finds whether its class has the method, if not, it finds its ancestor chain. If still not, it will find whether there is `method_missing`
- overriding `method_missing` allows you to call methods that don't really exist.