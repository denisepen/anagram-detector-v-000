# Your code goes here!

class Anagram
    attr_accessor :word, :possibles

    def initialize(word)
    @word = word
  end

  def match(possibles)

    possibles.select {|str| word.split('').sort == str.split('').sort}
    # or 2)
    # possibles.keep_if {|str| word.split('').sort == str.split('').sort}
    # or 3)
# this also works but not if you take out the .join - if you remove.join it doesn't pass rspec
# def match
  #   @possibles = possibles
  #   new_word = word.split('').sort.join
  #   new_arr = possibles.collect {|x| x.split('').sort.join}
  #   new_arr.select {|str| new_word == str}
  end

end
