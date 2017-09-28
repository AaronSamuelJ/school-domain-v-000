class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name if @roster[grade] != name
  end
end
