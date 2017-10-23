#!/usr/bin/env ruby

=begin
Given an integer number, write a function that inverts the order of its digits, keeping the sign. For instance, invert(1234) = 4321, while invert(-1234) = -4321"
=end

neg = false
a = -1234
if a < 0; then
    neg = true
end

a1 = Array(a.to_s.split(""))

ar = a1.reverse

arnum = ar.join("").to_i

if neg; then
    arnum *= -1
end

print arnum
