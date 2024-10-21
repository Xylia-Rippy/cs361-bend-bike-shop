def function_1(x)
    if x == 99
        return nil
    end
    x + 1
end

def function_1_wrapped(x)
    test = function_1(x)
    if test == nil
        raise IndexError
    end
    test
end

def function_2(x)
    if x == 99
        raise IndexError
    end
    x + 1
end

def function_2_wrapped(x)
    begin
        return function_2(x)
    rescue IndexError
        puts("Incalid input: 99")
       return nil
    end
end
x=0
while x<=99 do
    begin
    function_1_wrapped(x)
    rescue IndexError
        puts("Invalid input: 99 is now allowed")
    end
    function_2_wrapped(x)
    x += 1
end