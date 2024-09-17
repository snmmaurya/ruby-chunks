# Method to nested array into single array LIKE ruby inbuild method: flatten
def maintain_array(result, elements)
  if elements.kind_of?(Array)
    elements.each do |element|
      maintain_array(result, element)
    end
  else
    result.push(elements)
  end
end

result = [];
elements = [[1,2,3], [2,3,5,[8,[9]]]]
elements.each do |element|
  maintain_array(result, element)
end
print result;
