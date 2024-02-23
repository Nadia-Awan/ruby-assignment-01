require_relative 'ruby_includes'

# create a file containing email address
# by using IO operators
# to generate random email addresses, you can use faker gem

def generate_item(type)
  case type
  when 'email'
    return Faker::Internet.email
  when 'username'
    return Faker::Internet.username
  when 'rajnikanth'
    return Faker::Quotes::Rajnikanth.joke
  end
end

def write_to_file(type, number_of_times, file_name)
  result = []
  # run the loop number of times
  number_of_times.times do |item|
    temp = generate_item(type)
    result.push(temp)
  end

  File.open("output/#{file_name}", "w+") do |file|
    file.puts(result)
  end
end
