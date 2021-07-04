def convert_length(length, from: :m, to: :m)
  # units = { m: 1.0, ft: 3.28, in: 39.37 }
  # (length / units[from] * units[to]).round(2)
end

def calc_with_return 
  numbers = [1,2,3,4,5,6] 
  target = 0 
  numbers.each do |n|
    target = n
    if n.odd?
      target
    end
    end
    target * 10 
end
p calc_with_return