class Skiier

  attr_accessor :mountain, :team, :name, :country
  @@all = []

  def initialize(name, country=nil)
    @name = name
    @country = country
    @@all << self
  end

  def self.all
    @@all
  end

  def add_mountain(mountain)
    @mountain = mountain
  end

  def self.find_or_create_by_name(name, country=nil)
    found_skiier = @@all.find {|skiier| skiier.name == name}
    if found_skiier
      found_skiier
    else
      self.new(name, country)
    end
  end

  def self.find_all_skiiers_from_country(country)
    self.all.select {|skiier| skiier.country == country}
  end

end
