hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_,value|
  value.each do |word| 
    word.chars.each { |c| print c if ('aeiou').include? c}
  end
end