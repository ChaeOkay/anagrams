get '/' do
  'Please enter a word in the url, e.g. "/chicken"'
end

get '/:word' do
  @word = params[:word]
  @anagrams = Word.anagrams(@word)
  erb :show_anagrams
end
