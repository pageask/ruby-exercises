#!/usr/bin/env ruby

file_name = '/tmp/counter'

counter = if File.exists? file_name
            File.open file_name do |file|
              Marshal.load(file)
            end
          else
            0
          end

puts "Counter is currently at #{counter}"
puts "incrementing to #{counter + 1}"

counter += 1

File.open(file_name, 'w') do |file|
  Marshal.dump(counter, file)
end
