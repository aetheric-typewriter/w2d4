
def first_anagram?(w1, w2)
    wordbank = w1.split("").permutation(w1.length).to_a
    wordbank2 = wordbank.map {|word| word.join("")}
    wordbank2.include?(w2)
end

# p first_anagram?("hello", "bye")
# p first_anagram?("hello", "elloh")

def second_anagram?(w1,ww2)
    w2_arr = w2.split("")
    w1.each_char do |c|
        found_index = w2_arr.find_index(c)
        return false if found_index == nil
        w2_arr.delete_at(found_index)
    end
    w2_arr.empty?
end

def third_anagram?(w1, w2)
    sort_word(w1) == sort_word(w2)

end

def sort_word(w)
    alphabet = ("a".."z").to_a
    alpha_idx = Proc.new { |ltr1, ltr2| alphabet.index(ltr1) <=> alphabet.index(ltr2) }
    char_arr = w.split("")
    sorted_char_arr = char_arr.sort(&alpha_idx)
    sorted_char_arr.join("")
end

def fourth_anagram?(w1, w2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    w1.each_char do |c|
        hash1[c] += 1
    end
    w2.each_char do |c|
        hash2[c] += 1
    end
    hash1 == hash2
end

def bonus_anagram(w1,w2)
    hash = Hash.new(0)
    w1.each_char do |c|
        hash[c] +=1
    end
    w2.each_char do |c|
        hash[c] -=1
    end
    hash.each_value do |v|
        return false if v != 0
    end
    true
end