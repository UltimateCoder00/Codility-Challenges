def longest_password(s)
  s.downcase.split(" ").uniq.sort_by(&:length).reverse.each do |pass|
    return pass.length if password_correct?(pass)
  end
  -1
end

def password_correct?(password)
  all_password_conditions_satisfied(password) ? true : false
end

def password_integers_length(password)
  password.delete("^0-9").length
end

def password_letters_length(password)
  password.delete("^a-z").length
end

def password_integers_condition_correct?(password)
  password_integers_length(password) % 2 == 1
end

def password_letters_condition_correct?(password)
  password_letters_length(password) % 2 == 0
end

def total_password_length_correct?(password)
  password_integers_length(password) + password_letters_length(password) == password.length
end

def all_password_conditions_satisfied(password)
  password_integers_condition_correct?(password) && password_letters_condition_correct?(password) && total_password_length_correct?(password)
end
