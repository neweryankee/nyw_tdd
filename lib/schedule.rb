class Schedule

  attr_accessor :date

  def plan
    if self.date.is_a? Time
      'Hack'
    else
      'No plan'
    end
  end

end
