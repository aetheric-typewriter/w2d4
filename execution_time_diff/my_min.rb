list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


# O(n**2) expoenential complexity
my_min_phase_one(arr)
    arr.each do |x|
        lowest = true
        arr.each do |y|
            if x > y
                lowest = false
            end
        end
        return x if lowest = true
    end
end

# O(n) linear complexity
my_min_phase_two(arr)
    lowest = arr.first
    i = 1
    while i < arr.length
        if lowest > arr[i]
            lowest = arr[i]
        end
        i+=1
    end
    lowest
end



list = [5, 3, -7]
largest_contiguous_subsum(list)
    new_arr = []
    list.each_with_index do |x, x_i| 
        list.each_with_index do |y, y_i|
            if y_i >= x_i
                new_arr << list[y_i..x_i]
            end
        end
    end

    largest = nil
    new_arr.each do |sub_arr|
        largest = sub_arr.sum if largest == nil
    end

end
