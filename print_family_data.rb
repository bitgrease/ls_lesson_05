munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  puts "#{k} is #{v['age']}-year-old #{v['gender']}."
end

# LS solution
munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}."
end