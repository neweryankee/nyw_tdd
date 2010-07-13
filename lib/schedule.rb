class Schedule

  attr_accessor :date

  SUNDAY    = 0
  MONDAY    = 1
  TUESDAY   = 2
  WEDNESDAY = 3
  THURSDAY  = 4
  FRIDAY    = 5
  SATURDAY  = 6

  def initialize(date_string=nil)
    self.date = Time.parse(date_string) if date_string
    super()
  end

  def plan
    return 'No plan' unless self.date.is_a? Time
    case self.date.wday
    when SUNDAY, SATURDAY
      'Fish'
    when MONDAY, WEDNESDAY..FRIDAY
      'Hack'
    else
      'bostonrb'
    end
  end

end
