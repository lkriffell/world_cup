class Team
  attr_reader :country, :eliminated, :players

  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated=(eliminated)
    @eliminated = eliminated
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position_s)
    players.find_all do |player|
      player.position == position_s
    end
  end

end
