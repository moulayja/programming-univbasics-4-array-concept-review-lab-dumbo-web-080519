def find_element_index(array, value_to_find)
  array.index(value_to_find)
end

def find_max_value(array)
  max_value = 0
  array.each_with_index do |element, index|
    if array[index] > array[index+1].to_i && array[index] > max_value
      max_value = array[index]
    elsif array[index] < array[index+1].to_i && array[index+1] > max_value
      max_value = array[index+1]
    end
  end
  max_value
end

def find_min_value(array)
  min_value = ""
  max_index = array.length - 1 
  array.each_with_index do |element, index|
    if index+1 <= max_index
      if array[index] < array[index+1]
        if (min_value.class == String && min_value.empty?)
          min_value = array[index]
        elsif (array[index] < min_value)
          min_value = array[index]
        end
      elsif (array[index+1] < array[index])
        if (min_value.class == String && min_value.empty?)
          min_value = array[index+1]
        elsif (array[index+1] < min_value)
          min_value = array[index+1]
        end
      end
    end
  end
  min_value
  
end

