class WorldCup
  attr_reader :year, :teams
  def initialize(year, teams = [])
    @year = year
    @teams = teams
  end

  def active_players_by_position(position_s)
    active_players = []
    teams.each do |team|
      team.players.each do |player|
        if player.position == position_s && team.eliminated? == false
          active_players << player
        end
      end
    end
    active_players
  end

  def all_players_by_position
    players_by_position = {}
    teams.each do |team|
      team.players.each do |player|
        if players_by_position[player.position] == nil
          players_by_position[player.position] = [player]
        else
          players_by_position[player.position] << player
        end
      end
    end
    players_by_position
  end
end
