def caesar_cipher(str, num)
    result = []
    if num < 0
        num = num % 26 + 26
    end
    for i in str.bytes
        if i.between?(65, 90)
            i -= 65
            new_ascii_num = (i + num) % 26
            result.push((new_ascii_num + 65).chr)
        elsif i.between?(97, 122)
            i -= 97
            new_ascii_num = (i + num) % 26
            result.push((new_ascii_num + 97).chr)
        else
            result.push(i.chr)
        end
    end
    return result.join
end