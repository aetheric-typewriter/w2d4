
def first_anagram?(w1, w2)
    wordbank = w1.split("").permutation(w1.length).to_a
    wordbank2 = wordbank.map {|word| word.join("")}
    wordbank2.include?(w2)
end

p first_anagram?("hello", "bye")
p first_anagram?("hello", "elloh")

def second_anagram?(w1,ww2)
    w2_arr = w2.split("")
    w1.each_char do |c|
        found_index = w2_arr.find_index(c)
        return false if found_index == nil
        w2_arr.delete_at(found_index)
    end
    w2_arr.empty?
end