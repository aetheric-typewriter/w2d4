list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


# O(n**2) expoenential complexity
def my_min_phase_one(arr)
    arr.each do |x|
        lowest = true
        arr.each do |y|
            if x > y
                lowest = false
            end
        end
        return x if lowest == true
    end
end

# O(n) linear complexity
def my_min_phase_two(arr)
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


