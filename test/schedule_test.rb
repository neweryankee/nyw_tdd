require 'impromptu'
require 'test/unit'
require 'time'

class ScheduleTest < Test::Unit::TestCase

  def setup
    @schedule1 = Schedule.new
  end

  def test_date_attribute
    date = Time.parse('Thu Nov 29 14:33:20 GMT 2001')
    @schedule1.date = date
    assert_equal date, @schedule1.date
  end

  def test_plan_with_no_date_is_no_plan
    @schedule1.date = nil
    assert_equal 'No plan', @schedule1.plan
  end

  def test_plan_with_weekday_date_is_hack
    @schedule1.date = Time.parse('Thu Nov 29 14:33:20 GMT 2001')
    assert_equal 'Hack', @schedule1.plan
  end

end
