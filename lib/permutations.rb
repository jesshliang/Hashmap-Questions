def permutations?(string1, string2)
  compare = {}
  string1.split("").each do |i|
    if compare[i] == 1
      compare[i] += 1
    else
      compare[i] = 1
    end
  end

  string2.split("").each do |char|
    if compare[char] != nil
      compare[char] -= 1
    else
      return false
    end
  end

  compare.values.each do |val|
    if val != 0
      return false
    end
  end

  return true
end