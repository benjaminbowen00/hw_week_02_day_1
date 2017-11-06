require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_teams.rb')

class TestSportsTeams < MiniTest::Test
  def setup
    @team1 = SportsTeams.new("Football FC", ["John Kicker", "Luke Scorer", "Matthew Saver"], "Steve McCoach")
  end

  def test_team_name
    assert_equal("Football FC", @team1.team_name())
  end

  def test_players
    assert_equal(["John Kicker", "Luke Scorer", "Matthew Saver"], @team1.players())
  end

  def test_coach
    assert_equal("Steve McCoach", @team1.coach())
  end



end
