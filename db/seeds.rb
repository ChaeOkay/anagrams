file = 'words.txt'

IO.readlines(file).map do |word|
  formatted = word.chomp.downcase
  Word.create(full: formatted, sorted: Word.create_sort(formatted))
end
