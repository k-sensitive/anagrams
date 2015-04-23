require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("checks if one letter is an anagram for another letter") do
    expect("a".anagrams("b")).to(eq(""))
  end
  it("checks whether one word is an anagram for another word") do
    expect("dog".anagrams("god")).to(eq("god"))
  end
  it("checks is an anagram comparison fails") do
    expect("hello".anagrams("hi universe")).to(eq(""))
  end
  it("checks for anagrams in a list of words, against a specific word") do
    expect("cat".anagrams("I like tac and cta")).to(eq("tac cta"))
  end
end
