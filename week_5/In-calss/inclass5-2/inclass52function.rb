def add (a, b)
  a + b
end

def divide(a, b)
  a / b
end

def sum_array(a)
  a.reduce(0, :+)
end

def split_string(s, character)
    s.split(character)
end

def distance(x0, y0, x1, y1)
  Math.sqrt((x1 - x0)**2 + (y1 - y0)**2)
end
