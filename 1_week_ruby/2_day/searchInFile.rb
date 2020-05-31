def search_in_file(pattern, file_path)
  file_data = File.read(file_path).split("\n")
  file_data.each_with_index { |str, index| puts "`#{str}` in #{index + 1}" if str[pattern] }
end

search_in_file("search", "./searchInFile.rb")
