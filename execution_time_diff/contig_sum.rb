
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
    arr = []
    largest = list.first
    contig = true
    i = 1
    while i < list.length
        if contig == true
            if list[i] + largest > largest
                largest = list[i] + largest
            end
        else
            ccontig = true
        end
        if list[i] > largest
            largest = list[i]
            contig = false
        end
        i+=1
        p largest
    end
    largest


    #I'll try psuedocode to keep the driver/navigator thing
    
end
