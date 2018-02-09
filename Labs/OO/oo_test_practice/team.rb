class Team

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_skiier(skiier_name)
    new_teammate = Skiier.find_or_create_by_name(skiier_name)
    new_teammate.team = self
  end



end
