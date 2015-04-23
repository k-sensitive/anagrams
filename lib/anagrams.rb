class String
  define_method(:anagrams) do |check|
    letters = self.split("")
    letters.sort!()
    output = []
    words = check.split(" ")
    words.each do |words|
       anag = words.split("")
       anag.sort!()
       if anag.eql?(letters)
         output.push(words)
       end
    end
    output.join(" ")
  end
end
