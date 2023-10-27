require 'pry-byebug'
dictionary = ['above', 'below', 'cash', 'cow', 'cat', 'rat', 'dog', 'corn', 'down', 'out', 'funny', 'monkey', 'crickey', 'squeak', 'moo', 'pony', 'up', 'down', 'howdy', 'there', 'buckaroo', 'what']

def substrings(string, array)
    new_hash = Hash.new(0)

    lower_string = string.downcase
    string_no_punc = lower_string.delete('!@#$%^&*()-_=+.?')
    words = string_no_punc.split(' ')
    index = 0
    ##binding.pry
    while index < words.length
        word = words[index]
        if array.include?(word)
            new_hash[word] += 1
        end
    index += 1
    end
    puts new_hash
end

message = "Hold up there buckaroo!  Time to pony up some cash!"

substrings(message, dictionary)
