require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  @word = params.fetch('word')
  @string = params.fetch('string')
  @anagrams = @word.anagrams(@string)
  erb(:anagrams)
end
