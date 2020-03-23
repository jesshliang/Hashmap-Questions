def intersection(list1, list2)
  compare = {}
  list1.each do |element|
    compare[element] = 0
  end

  ar = []
  list2.each do |element|
    if compare[element] == 0
      ar << element
    end
  end

  return ar
end