class School
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {} 
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
        # puts "Added #{name} to Grade #{grade} Student Roster."
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end

end