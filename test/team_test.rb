require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'
class TeamTest < Minitest::Test
  def test_team_has_attributes
    team = Team.new("France")

    assert_equal "France", team.country
  end

  def test_team_elimination
    team = Team.new("France")

    refute team.eliminated?

    team.eliminated = true

    assert team.eliminated?
  end

  def test_players_starts_empty
    team = Team.new("France")

    assert_equal [], team.players
  end

  def test_players_can_be_filled
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)
    assert_equal [mbappe, pogba], team.players
  end

  def test_players_by_position
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)
    require "pry"; binding.pry
    assert_equal [pogba], team.players_by_position("midfielder")
    assert_equal [], team.players_by_position("defender")
  end
end
