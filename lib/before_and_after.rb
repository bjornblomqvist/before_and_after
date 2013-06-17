module BeforeAndAfter

  LEFT_SIDE_LATER  = 1
  RIGHT_SIDE_LATER = -1
 
  # * +input_time+ - time to compare
  #
  #    Time.now.before?(2.hours.from_now)
  #
  def before?(input_time)
    (self <=> input_time) == -1
  end
  
  # * +input_time+ - time to compare
  #
  #    Time.now.after?(2.hours.ago)
  #
  def after?(input_time)
    (self <=> input_time) == 1
  end
  
  # * +time_span+ - time span in seconds
  #
  #    2.minutes.ago.within_last?(2.hours)
  #
  def within_last?(time_span)
    self.between?(Time.now - time_span, Time.now)
  end

  # * +time_span+ - time span in seconds
  #
  #    2.minutes.from_now.within_coming?(2.hours)
  #
  def within_coming?(time_span)
    self.between?(Time.now, Time.now +  time_span)
  end

end

Time.send :include , BeforeAndAfter