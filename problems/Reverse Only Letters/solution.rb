# @param {String} s
# @return {String}
def reverse_only_letters(s)
    s = s.split("")
    size = s.size
    reverse_str = ""
    
    i = 0
    j = size - 1
    
    while i < j do
        if !s[i].match?(/[a-zA-Z]/)
            i = i+1
        elsif !s[j].match?(/[a-zA-Z]/)
            j = j-1
        else
            a = s[i]
            s[i] = s[j]
            s[j] = a
            i = i+1
            j=j-1
        end
    end
    s.each { |str| reverse_str += str.to_s}
    return reverse_str
 
end
