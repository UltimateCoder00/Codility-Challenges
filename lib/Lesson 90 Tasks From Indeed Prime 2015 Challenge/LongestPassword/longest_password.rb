def longest_password(s)
  s.downcase.split(" ").uniq.sort_by(&:length).reverse.each do |pass|
    return pass.length if password_correct?(pass)
  end
  -1
end

def password_correct?(pass)
  num_length = pass.delete("^0-9").length
  str_length = pass.delete("^a-z").length
  return false unless num_length % 2 == 1
  return false unless str_length % 2 == 0
  num_length + str_length == pass.length ? true : false
end
