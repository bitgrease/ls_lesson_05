# create a uuid 32 hex characters  8c-4c-4c-4c-12c

def create_uuid
  dec_to_hex_map = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f]
  uuid_string = ''
  8.times { uuid_string << dec_to_hex_map[rand(0..15)] }
  uuid_string << '-'
  3.times do 
    4.times { uuid_string << dec_to_hex_map[rand(0..15)] }
    uuid_string << '-'
  end
  12.times { uuid_string << dec_to_hex_map[rand(0..15)] }
  uuid_string
end

p create_uuid

# better solution from LS

def create_uuid_2
  characters = []
  uuid = ''
  ('a'..'f').each { |char|  characters << char}
  (0..9).each { |digit| characters << digit.to_s }
  
  sections = [8, 4, 4, 4, 12]

  sections.each_with_index do |section, index|
    section.times { uuid << characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p create_uuid_2