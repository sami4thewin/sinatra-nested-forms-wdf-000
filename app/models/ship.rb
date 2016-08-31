class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  # def initialize(args)
  #   @name = args[:name]
  #   @type = args[:type]
  #   @booty = args[:booty]
  #   SHIPS << self
  # end

  def initialize(son)
    @name = son[:name]
    @type = son[:type]
    @booty = son[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
