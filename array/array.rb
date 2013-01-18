def my_uniq(array)
  new_array = []
  array.each do |x| 
    new_array << x if !new_array.include?(x)
  end
  new_array
end