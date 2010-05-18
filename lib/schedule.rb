class Schedule

  attr_accessor :date

  def plan
    if self.date.is_a? Time
      if self.date.wday == 0 or self.date.wday == 6
        'Fish'
      else
        'Hack'
      end
    else
      'No plan'
    end
  end

end
