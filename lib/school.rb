class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end
end
