def bubble_sort(array)
    sorted = array
    passes = array.length - 1

    passes.times do
        array.length.times do
            sorted.each_with_index do |number, index|
                left = sorted[index]
                right = sorted[index + 1]

                if right != nil && left > right
                    sorted[index] = right
                    sorted[index + 1] = left
                end
            end
        end
    end

    return sorted
end

array = [51, 2, 28, 51, 76, 52, 21, 42, 57, 33]
puts bubble_sort(array).join(", ")