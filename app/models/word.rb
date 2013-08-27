class Word < ActiveRecord::Base
  # Remember to create a migration!
  class << self
    def create_sort(word)
      format(word)
    end

    def anagrams(word)
      matcher = format(word)
      Word.where(sorted: matcher).map {|w| w.full}
    end

    private

    def format(word)
      word.downcase.split('').sort.join('')
    end
  end
end
