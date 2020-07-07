def caesar_cipher(string, movement)
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    return string if string.class == Integer
    string_array = string.split("")
    string_array.each_with_index do |string_char, string_index|
        alphabet.each_with_index do |al_char, al_index|
            if al_char.upcase === string_char.upcase && string_char.match(/[a-zA-Z]/)
                if al_char == string_char
                    string_array[string_index] = alphabet[(al_index + movement) % alphabet.length]
                else
                    string_array[string_index] = alphabet[(al_index + movement) % alphabet.length].upcase
                end
            end
        end
    end
    final_result = string_array.join("")
    final_result
end