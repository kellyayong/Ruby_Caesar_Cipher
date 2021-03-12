array = [4,3,78,2,0,2]

def bubble_sort(array)
    return array if array.size <= 1
    swapped = true
    array_length = array.size
    while swapped do
        swapped = false
        (array_length-1).times do |i|
            if array[i] > array[i+1] 
                array[i], array[i+1] = array[i+1], array[i] 
                swapped = true
            end
        end
    end
    puts "#{array}"
end

bubble_sort(array)