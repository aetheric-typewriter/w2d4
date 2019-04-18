
list = [5, 3, -7]
def largest_contiguous_subsum(list)
    new_arr = []
    list.each_with_index do |x, x_i| 
        list.each_with_index do |y, y_i|
            if y_i >= x_i
                new_arr << list[x_i..y_i]
            end
        end
    end
    # p new_arr
    largest = new_arr.first.sum
    new_arr.each do |sub_arr|
        largest = sub_arr.sum if sub_arr.sum > largest
    end
    largest
end

# This was a HackerRank programming interview question. So we need to use dynamic programming I think.
# keep two arrays, which we maybe not call 'largest_sum_found' and 'start_index_of_largest_sum'
# 

def largest_contiguous_sum(list)
    arr = []
    largest = list.first
    list.each_with_index do |ele, i|
        j = i
        until j == list.length - 1
            largest = list[i..j].sum if list[i..j].sum > largest
        end
    end
    largest
end

def largest_contiguous_sum_2(list)
    arr = [list.first]
    i = 1
    while i < list.length
        if list[i] > list[i] + arr.last
            arr << list[i]
        else
            arr << list[i] + arr.last
        end
        i+=1
    end
    p arr
    arr.max

    
end

def largest_contiguous_sum_3(list)
    sums = Array.new(list.length, nil)

    sums[0] = list[0]

    for i in 1...(list.length)
        sums[i] = [list[i], list[i] + sums[i - 1]].max
    end
    
    p sums
    sums.max
end

#First could you explain his suggestion regarding how to achieve constant space complexity?


def largest_contiguous_sum_const_space(list)
    largest_found = list.first
    current_largest = list.first
    
    i = 1
    while i < list.length
        if list[i] > list[i] + current_largest
            current_largest = list[i]
        else
            current_largest = list[i] + current_largest
        end

        if current_largest > largest_found
            largest_found = current_largest
        end

        i+=1
    end
    largest_found
end