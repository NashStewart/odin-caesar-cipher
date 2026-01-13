# frozen_string_literal: true

require_relative '../lib/cipher.rb'

describe Cipher do
  describe '#caeser_cipher' do
    context 'when phrase is one word' do
      let(:phrase) { 'testing' }
      subject(:cipher) { described_class.new }

      it 'returns phrase with small positive shift' do
        shift = 2
        ciphered_phrase = cipher.caeser_cipher(phrase, shift)
        expect(ciphered_phrase).to eq('vguvkpi')
      end

      it 'returns phrase with large positive shift' do
        shift = 56
        ciphered_phrase = cipher.caeser_cipher(phrase, shift)
        expect(ciphered_phrase).to eq('xiwxmrk')
      end

      it 'returns phrase with small negative shift' do
        shift = -2
        ciphered_phrase = cipher.caeser_cipher(phrase, shift)
        expect(ciphered_phrase).to eq('rcqrgle')
      end

      it 'returns phrase with large positive shift' do
        shift = -56
        ciphered_phrase = cipher.caeser_cipher(phrase, shift)
        expect(ciphered_phrase).to eq('paopejc')
      end
    end
    
    context 'when phrase is a sentice with punctuation' do
      let(:phrase) { 'This is a test!' }
      subject(:cipher) { described_class.new }

      it 'returns shifted phrase with capitalization and punctuation' do
        shift = 11
        ciphered_phrase = cipher.caeser_cipher(phrase, shift)
        expect(ciphered_phrase).to eq('Estd td l epde!')
      end
    end
  end
end

