def bubble_sort(arr)
  has_changed = false

  (0..arr.length - 2).each do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      has_changed = true
    end
  end

  bubble_sort(arr) if has_changed

  arr
end

# Sorting with blocks + yield =============================

def bubble_sort_by(arr)
  has_changed = false

  (0..arr.length - 2).each do |i|
    sort_elements = yield(arr[i], arr[i + 1])
    if sort_elements.positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      has_changed = true
    end
  end

  bubble_sort_by(arr) { |a, b| a.length - b.length } if has_changed

  arr
end
