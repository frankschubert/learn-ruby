#!/usr/bin/env ruby

=begin

Given an inorder input series of integers, write FindMissing to return the inorder series of integers that are missing from the input. If I call FindMissing() with "10, 12, 14" it should return "11, 13".

Step 2 is: Ok, that works, we put it in production and we find it's too slow. We analyze how it's being used and find most often it's being called with very large input series (millions of elements) with very few missing (< 20 in the output). Can you think of a way to optimize the implementation to be faster for his case.

=end

def findMissingNumbers( arrayOfNumbers )
    # walk through all known numbers
    # for each known number + 1 print until reaching next number
    $last = arrayOfNumbers[0].to_i
    arrayOfNumbers.each { |known|
        $last = $last.to_i + 1
        while $last < known.to_i
             puts $last
            $last = $last + 1 
        end
        $last = known
        next
    }
end

findMissingNumbers(ARGV)
