class School
@@instances= []
@@counter = 0



def School.reset_all
@@instances = []
@@counter = 0
end


#initialize
def initialize (name, location, ranking)
@name = name
@location = location
@ranking = ranking
@students = []
@instructors = []
@@counter = @@counter + 1
@@instances << self
end


#attributes
def School.all
@@instances

end
  



def School.count
  @@counter
end

def add_student(name, grade, semester)
@students << {:name => name, :grade => grade, :semester => semester}

end



def name; @name
end
def location; @location
end
def ranking; @ranking
end
def students; @students
end
def instructors; @instructors
end


def remove_student(name)
  @students.each do | x |
      if x[:name] == name
        @students.delete(x)
      end
    end
  end
end