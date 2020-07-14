class Player
  attr_reader :name, :position

  def initialize(atts = {})
    @name = atts[:name]
    @position = atts[:position]
  end
end
