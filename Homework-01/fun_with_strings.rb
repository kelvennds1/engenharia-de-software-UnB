# a)

def palindrome?(string)
    string_cleaned = string.gsub(/\W+/, "")
    string_cleaned = string_cleaned.downcase()
    string_cleaned == string_cleaned.reverse()
end


palindrome?("A man, a plan, a canal -- Panama") #=> true
palindrome?("Madam, I'm Adam!") # => true
palindrome?("Abracadabra") # => false (nil is also ok)

# b)

def count_words(string)
    words_cleaned = string.downcase.scan(/\w+/)
    count_words = Hash.new(0)

    words_cleaned.each do |word|
      count_words[word] += 1
    end
    # puts(count_words)
    count_words
end

count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo" # => {'doo' => 3, 'bee' => 2}