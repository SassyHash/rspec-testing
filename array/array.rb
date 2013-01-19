#my_uniq = done
# #two_sum
# Hanoi



def my_uniq(array)
  new_array = []
  array.each do |x| 
    new_array << x if !new_array.include?(x)
  end
  new_array
end

def two_sum(array)
  indices = []
  array.length.times do |i1|
    array.length.times do |i2|
      if i1 < i2
        indices << [i1, i2] if array[i1] + array[i2] == 0
      else
        next
      end
    end
  end
  indices
end

