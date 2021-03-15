def bubble_sort(arr)
  has_changed = true

  while has_changed == true
    has_changed = false

    (0..arr.length - 2).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        has_changed = true
      end
    end

  end

  arr
end

bubble_sort([14, 56, 2, 78, 9])

# Sorting with blocks + yield =============================

def bubble_sort_by(arr)
  (0..arr.length - 2).each do |i|
    sort_elements = yield(arr[i], arr[i + 1])
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if sort_elements.positive?
  end

  arr
end

bubble_sort_by(%w[hi hello hey horray]) { |a, b| a.length - b.length }
