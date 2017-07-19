munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum_of_males_ages = 0
munsters.reject { |_,v| v['gender'] == 'female' }.each_value do |value|
  sum_of_males_ages += value['age']
end

p sum_of_males_ages