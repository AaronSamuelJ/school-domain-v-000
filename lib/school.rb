require 'pry'
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
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |key, value|
      @roster[key].sort
    end
  end
end
