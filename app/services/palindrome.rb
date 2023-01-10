class Palindrome

    def valid? string
      reverse = convertion_reverse string ## Guard Clause
      reverse === string ? true : false
    end

    def convertion_reverse string
        string.split("").reverse.join("")
    end
end