#/usr/bin/env ruby

=begin
print roman literals
this is a ruby excercise to print roman literals

I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000

You can combine letters to add values by listing them largest to smallest from left to right:
II = 2
VIII = 8
XXXI = 31

You may list only three consecutive identical letters. A single lower value may precede a larger value to indicate subtraction. For example:
IV = 4
IX = 9
XL = 40
XC = 90
CD = 400
CM = 900

=end

# extend the Fixnum class with method that prints roman literals
class Fixnum
    def to_roman
        remainder = self
        roman = ""
        # loop until reaching 0
        while remainder > 0
            #puts "DEBUG: remainder #{remainder}"
            if remainder >= 1000
                remainder -= 1000
                roman += "M"
                next
            elsif remainder >= 500
                remainder -= 500
                roman += "D"
                next
            elsif remainder >= 100
                remainder -= 100
                roman += "C"
                next
            elsif remainder >= 90
                remainder -= 90
                roman += "XC"
                next
            elsif remainder >= 50
                remainder -= 50
                roman += "L"
                next
            elsif remainder >= 40
                remainder -= 40
                roman += "XL"
                next
            elsif remainder >= 10
                remainder -= 10 
                roman += "X"
                next
            elsif remainder >= 9
                remainder -= 9
                roman += "IX"
                next
            elsif remainder >= 5
                remainder -= 5
                roman += "V"
                next
            elsif remainder >= 4
                remainder -= 4
                roman += "IV"
                next
            else
                remainder -= 1
                roman += "I"
                next
            end
        end
        return roman
    end
end

puts ARGV[0].to_i.to_roman
