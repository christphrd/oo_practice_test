class Mountain

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def list_skiiers
    Skiier.all.select{|ski| ski.mountain == self}
  end

  def add_skiier(name)
    new_skiier = Skiier.find_or_create_by_name(name)
    new_skiier.add_mountain(self)
  end

  def list_teams
    skiier_instances = self.list_skiiers
    #kbinding.pry
    skiier_instances.map do |skiier|
      skiier.team
    end.compact
  end

end
