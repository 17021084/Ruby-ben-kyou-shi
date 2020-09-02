
# if varibale name have mutiable world, seperated with '_'
full_name ="Do Trung"
age=34
puts " Hello mina san"
puts (" toi ten la "+full_name)
puts (" toi hien tai dang "+age.to_s+" tuoi" )


# bacsic data type
# Arrays
# Boolean
# Numbers
# Strings
# Nil   - ko co gia tri
# Symbols - is similar to String but a symbol can’t be changed
# Hashes 

array = [1,2,3,4]
bool = true
int = 2 
str = "abc"
notValue = nil

# Hash - similar obj in js
employee_ages = {
    "John" => 31,
    "David" => 25,
    "Mike" => 23,
}

puts employee_ages["John"]

# both those below will retun nil
puts array[5]
puts notValue

puts :hello.upcase

