def decode_char(morse)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code[morse] || '' # Return corresponding character or empty string if not found
end

# Method to decode an entire word in Morse code
def decode_word(word)
  word.split.map { |morse| decode_char(morse) }.join
end

# Method to decode the entire message in Morse code
def decode(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end
