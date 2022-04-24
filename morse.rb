@decoder = {'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D' , '.' => 'E', '..-.' => 'F', '--.' => 'G', 
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', 
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', 
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'}

def decode_char(char)  
    @decoder[char]
end  

p decode_char('.-')

def decode_word(str)
    word_arr = []
    str.split(' ').each {|char| word_arr.push(decode_char(char))}
    word_arr.join
end

p decode_word("-- -.--")

def decode(arr)
   new_arr = []    
   arr.split('   ').each {|str| new_arr.push(decode_word(str))}   
   new_arr.join(' ')   
end

p decode("-- -.--   -. .- -- .")

p decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")