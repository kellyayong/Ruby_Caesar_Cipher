def substrings(string, dictionary)
    new_string = string.downcase
    result = Hash.new(0) 
    dictionary.map do |word| 
        new_string.scan(word) do
            if result.has_key?(word) then result[word] += 1      
            else result[word] = 1
            end   
        end
    end
    puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
