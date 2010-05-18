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

end
