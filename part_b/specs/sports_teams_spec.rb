#better to do all tests in one go?
#only writer if setting it as a value - not updating?
# can you just define an @variable (e.g. a hash) and use it in functions
# is it ok to define a variable for th first part of assert_true (e.g. when big hash)
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

  def test_set_coach
    @team1.coach = "Fabio Calcio"
    assert_equal("Fabio Calcio", @team1.coach)
  end

  def test_add_player
    @team1.add_player("James Tackler")
    assert_equal(["John Kicker", "Luke Scorer", "Matthew Saver", "James Tackler"], @team1.players())
  end

  def test_check_for_player
    assert_equal(true, @team1.check_for_player("John Kicker"))
    assert_equal(false, @team1.check_for_player("Dave Jumper"))
  end

  def test_result_points__win
    @team1.result("win")
    assert_equal(3, @team1.points)
  end

  def test_result_points__lose
    @team1.result("lose")
    assert_equal(0, @team1.points)
  end

  def test_result_points__draw
    @team1.result("draw")
    assert_equal(1, @team1.points)
  end


end
