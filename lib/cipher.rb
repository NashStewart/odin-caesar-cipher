class Cipher
  def caeser_cipher(phrase, shift)
    phrase_bytes = phrase.bytes
    upper_case_base = 65
    lower_case_base = 97
    
    ciphered_phrase_array = phrase_bytes.map do |char_num|
      if char_num.between?(65, 122)
        base = char_num < lower_case_base ? upper_case_base : lower_case_base
        char_num = (((char_num - base) + shift) % 26) + base
    end
      char_num.chr
    end

    return ciphered_phrase_array.join
  end
end

