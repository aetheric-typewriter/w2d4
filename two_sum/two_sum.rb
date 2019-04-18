def bad_two_sum(arr,target)
    found = false
    arr.each_with_index do |el1,i1|
        arr.each_with_index do |el2, i2|
            if i2>i1
                found = true if el1+el2 == target
            end
        end
    end
    found
end

def sorting_two_sum(arr,target)
    sorted_arr = arr.sort
    arr.each_with_index do |el1,i1|
        return false if i1 >= target
        arr.each_with_index do |el2,i2|
            if el2 >= target
                break
            end
            if i2 > i1
                return true if el1+el2 == target
            end
        end
    end
    false
end

def hash_two_sum(arr, target)
    hash = Hash.new(0)
    arr.each do |el|
        hash[el]+=1
    end
    return true if hash[target/2] == 2
    hash.each_key do |k1|
        hash.each_key do |k2|
            return true if k1!=k2 && k1+k2 == target
        end
    end
    false
end