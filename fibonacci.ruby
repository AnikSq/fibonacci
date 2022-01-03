def fibs(num)
    arr = [1 , 2]
    i = 1
    while i <= num - 2
        arr << arr[-1] + arr[-2]
        i+=1
    end
    return arr
end



def fibs_rec(num)
    return [1] if num == 1
    return [1 , 2] if num == 2
    seq = fibs_rec(num - 1)
    seq << seq[-2] + seq[-1]
    return seq
end


print fibs_rec(5)
