# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    chars = text.split("")
    a = [0,0,0,0,0,0,0]
    
    chars.each do |char|
        if char == 'b'
            a[0] += 1
        elsif char == 'a'
            a[1] += 1
        elsif char == 'l'
            a[2] > a[3] ? a[3] += 1 : a[2] += 1
        elsif char == 'o'
            a[4] > a[5] ? a[5] += 1 : a[4] += 1
        elsif char == 'n'
            a[6] += 1
        end
    end
    min = a[0]
    a.each do |repeat|
        if min > repeat
            min = repeat
        end
    end
    
    return min
    
end
