require 'pry'

class CustomArray
  def initialize(un_flattened)
    @un_flattened = un_flattened
    @my_array = []
  end

  def flatten
    array_check(@un_flattened)
    @my_array.uniq
  end

  def array_check(array)
    array.each do |element|
      element_check(element)
    end
  end

  def element_check(element)
    if element.kind_of?(Array)
      array_check(element)
    else
      @my_array << element
    end
  end
end

a = [[1,2], [3, [4,5]]]
c = CustomArray.new(a)
b = c.flatten
binding.pry
