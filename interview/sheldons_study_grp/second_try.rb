# rubocop:disable Layout/TrailingWhitespace, Layout/LineLength, Layout/EmptyLines, Lint/RedundantCopDisableDirective
=begin

Aim:

You have to create a function that takes a positive integer number and returns
the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071

If no bigger number can be composed using those digits, return -1:

9 ==> -1
111 ==> -1
531 ==> -1

Questions:
  - 
  - 
  - 
  - 

Rules
### EXPLICIT:
    - Input: Integer
    * Positive integer
    - Output: Returned Integer
    * The next number that is greater than the input and uses the same digits
      or -1 if the input is the greatest number that uses that combination of
      digits
    - 
    - 
    - 
    - 

### IMPLICIT:
    - The number is the greatest combination where the digits run from biggest
      to smallest left to right.
    - 
    - 

Examples:

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1

Data Structure / High Level Notes:
  - Is input the greatest number using that combination?
    - Are the digits of input arranged from biggest to smallest?
  - Find the next biggest number
    1. increment input by 1
    2. check to see whether the incremented input contains the same digits as
       input
       - split and sort the input and incremented input and compare to see whether they are equal.

Algorithm

Input: Integer (input)

 1. Determine whether the digits of input are arranged from biggest to smallest
    - convert the input into digits_of_input
    - return -1 if digits_of_input is equal to digits_of_input after being sorted
 2. Initialise next_biggest to input
 3. increment next_biggest
 4. convert next_biggest into next_biggest_array
 5. return next_biggest if next_biggest_array and digits_of_input are equal
    when both are sorted.
 6. Repeat steps 3-5

Output: Returned Integer

=end
# rubocop:enable Layout/TrailingWhitespace, Layout/LineLength, Layout/EmptyLines, Lint/RedundantCopDisableDirective

def next_bigger(input)
  digits_of_input = input.to_s.split('')
  return -1 if digits_of_input.sort { |a, b| b <=> a } == digits_of_input

  next_biggest = input
  loop do
    next_biggest += 1
    digits_of_next_biggest = next_biggest.to_s.split('')
    return next_biggest if digits_of_next_biggest.sort == digits_of_input.sort
  end
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1

# rubocop:disable Layout/TrailingWhitespace, Layout/LineLength, Layout/EmptyLines, Lint/RedundantCopDisableDirective
=begin

___Lingering Questions___
 1. 
 2. 
 3. 

# POST-SOLUTION

___First thoughts___
  - 
  - 
  - 
  - 

___Mental Model Modifications___
  - 
  - 

# FURTHER EXPLORATION

Aim:



Questions:
  - 
  - 
  - 
  - 

  Rules
    - Input: 
    * 
    - Output: 
    * 
    - 
    - 
    - 

Examples:



Algorithm
 1. 
 2. 
 3. 
 4. 
 5. 

=end
# rubocop:enable Layout/TrailingWhitespace, Layout/LineLength, Layout/EmptyLines, Lint/RedundantCopDisableDirective
