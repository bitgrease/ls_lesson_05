# Return an array with color or fruit and size of vegetables.
# Colors should be capitalized and size should be upper cased

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

color_size_array = hsh.map do |name, details|
  if hsh[name][:type].eql? 'fruit'
    hsh[name][:colors].map(&:capitalize)
  else
    hsh[name][:size].upcase
  end
end

p color_size_array

