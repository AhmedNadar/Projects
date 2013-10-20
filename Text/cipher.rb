module Cipher

  LETTERS = ("A".."Z").to_a


  def self.caesar_crypt(n, string)
    string = string.upcase
    encrypted = []
    string.split('').each_index do |idx|
      string_index = LETTERS.index(string[idx])
      encrypted << LETTERS[(string_index + n) % 26]
    end
    encrypted.join
  end

  def self.vigenere_crypt(keyword, string)
    string = string.upcase
    key = (keyword * (string.length/keyword.length) + keyword[0..string.length % keyword.length-1]).upcase
    encrypted = []
    string.split('').each_index do |idx|
      string_index = LETTERS.index(string[idx])
      key_index = LETTERS.index(key[idx])
      encrypted << LETTERS[(string_index + key_index) % 26]
    end
    encrypted.join
  end

  def self.atbash_crypt(string)
    string = string.upcase
    encrypted = []
    string.split('').each_index do |idx|
      string_index = LETTERS.index(string[idx])
      encrypted << LETTERS[-(string_index+1) % 26]
    end
    encrypted.join
  end
end