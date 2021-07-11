def metodo_misterioso(array)
  n = array.size - 1
  n.times do |i|
    min = i
    (i + 1).upto(n) do |j|
      min = j if array[j] < array[min]
    end
    if i != min
      temp = array[min]
      array[min] = array[i]
      array[i] = temp
    end
  end

  array
end

p metodo_misterioso([5, 1, 4, 2, 3])
