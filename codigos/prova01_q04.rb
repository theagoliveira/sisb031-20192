def metodo_secreto(array, elem)
  inf = 0
  sup = array.length - 1

  while (inf <= sup)
    meio = (inf + sup) / 2

    if array[meio] == elem
      return meio
    elsif array[meio] < elem
      inf = meio + 1
    else
      sup = meio - 1
    end
  end

  'Erro'
end

puts metodo_secreto((10..30).to_a, 27)
puts metodo_secreto((10..30).to_a, 7)
puts metodo_secreto([4, 5, 10, 2, 8, 6, 3, 9, 1, 7], 6)
