class School
  attr_reader :roster

  def initialize
    @roster = Hash.new {|hsh, key| hsh[key] = [] }
  end

  def students(grade)
    roster[grade].sort
  end

  def add(name, grade)
    roster[grade] << name
  end

  def students_by_grade
    formatted_students = roster.sort.map do |grade, students|
      {:grade=>grade, :students=>students.sort}
    end
    formatted_students
  end

end

module BookKeeping
  VERSION = 3
end
