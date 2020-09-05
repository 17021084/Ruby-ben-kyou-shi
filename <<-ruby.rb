# For integers it means bitwise left shift:
5 << 1  # gives 10
17 << 3 # gives 136



# arrays and strings, it means append:
"hello, " << "world"   # gives "hello, world"
[1, 2, 3] << 4         # gives [1, 2, 3, 4]

[] << 1   # => [1]
[].<<(1)  # => [1]