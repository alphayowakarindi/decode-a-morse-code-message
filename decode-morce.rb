CODE = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..'
}.freeze

def decode_char(morce_code)
   @character = CODE.key(morce_code)
   @character
end

def decode_entire_word_helper(morce_code)
  @characters = morce_code.split 
  @join_character = ''
  @characters.each do |n|
    @join_character += decode_char(n)
  end
  @join_character
end

def decode_word(entire_word)
  decode_entire_word_helper(entire_word)
end

def decode(entire_message)
  @characterss = entire_message.split('   ')
  @join_words = ' '
  @characterss.each do |n|
    @join_words += decode_entire_word_helper(n) + ' '
  end
  print @join_words
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
