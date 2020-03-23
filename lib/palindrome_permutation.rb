def palindrome_permutation?(string)
  check = {}
  string.split("").each do |i|
    if check[i] == 1
      check[i] += 1
    else
      check[i] = 1
    end
  end

	odds = 0
	check.values.each do |val|
		if val % 2 != 0
			odds += 1
		end
	end
	
	odds <= 1 ? true : false
end