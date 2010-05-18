class Schedule

  attr_accessor :date

  def plan
    return 'No plan' unless self.date.is_a? Time
    if (1..5).include? self.date.wday
      'Hack'
    else
      'Fish'
    end
  end

end
