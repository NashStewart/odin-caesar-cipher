# frozen_string_literal: true

require_relative 'lib/cipher.rb'

cipher = Cipher.new

puts 'Enter a phrase to cipher'
phrase = gets.chomp

puts "\nEnter a shift number"
shift = gets.chomp.to_i

ciphered_phrase = cipher.caeser_cipher(phrase, shift)
puts "\nCiphered phrase\n#{ciphered_phrase}"

