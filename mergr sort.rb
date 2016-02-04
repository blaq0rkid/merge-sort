def merge_sort(array)
  return array if array.length <= 1
  array1 = array[0..(array.length / 2) -1]
  array2 = array[array1.length..-1]
  a = merge_sort(array1)
  b = merge_sort(array2)
  merge(a,b)
end

def merge(a,b)
  @sorted = []
  until a.empty? || b.empty?
    if a[0] <= b[0]
      @sorted << a.shift
    else
      @sorted << b.shift
    end
  end
  @sorted + a + b
end



puts merge_sort([10, 2500, 16, 44, 9, 79, 33])