puts 'Enter a phrase to cipher'
phrase = gets.chomp

puts "\nEnter a shift number"
shift = gets.chomp.to_i

phrase_bytes = phrase.bytes
ciphered_phrase = phrase_bytes.map do |n|
  if n.between?(97, 122)
    n = n + shift
    if n > 122
      new_shift = n - 122
      n = 96 + new_shift
    end
  elsif n.between?(65, 90)
    n = n + shift
    if n > 90
      new_shift = n - 90
      n = 64 + new_shift
    end
  end
  n.chr
end.join

puts "\nCiphered phrase\n#{ciphered_phrase}"

ciphered_bytes = ciphered_phrase.bytes
original_phrase = ciphered_bytes.map do |n|
  if n.between?(97, 122)
    n = n - shift
    if n < 97
      new_shift = 97 - n
      n = 123 - new_shift
    end
  elsif n.between?(65, 90)
    n = n - shift
    if n < 65
      new_shift = 65 - n
      n = 91 - new_shift
    end
  end
  n.chr
end.join

puts "\nDe-ciphered phrase\n#{original_phrase}"

