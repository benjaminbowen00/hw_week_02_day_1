require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student_class.rb')

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Peter", 18)
  end

  def test_name
    assert_equal("Peter", @student1.name)
  end

  def test_cohort
    assert_equal(18, @student1.cohort)
  end

  def test_set_name
    @student1.set_name("Mick")
    assert_equal("Mick", @student1.name)
  end

  def test_set_cohort
    @student1.set_cohort(19)
    assert_equal(19, @student1.cohort)
  end

  def test_talk
    @student1.talk()
    assert_equal("I can talk!", @student1.talk())
  end

  def test_say_favourite_language
    sentence = @student1.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", sentence)
  end


end
