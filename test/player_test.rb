require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
class PlayerTest < Minitest::Test

  def test_player_has_attributes
      player = Player.new({name: "Ichiro", position: "Outfielder"})
      
      assert_equal "Ichiro", player.name
      assert_equal "Outfielder", player.position
  end
end
