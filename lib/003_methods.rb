# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope
def get_grade (school, name)
   school[:students].find {|y| y[:name] == name}[:grade]
end    


def update_subject(school, name, subject)
  school[:instructors].each do |x|
    
      x[:subject] = subject if x[:name] == name
  end

end


def add_new_student (school, name)
school[:students] << {:name => name}
end

def add_new_key (school, key, value)
key = key.to_sym
school[key] = value
end


      




