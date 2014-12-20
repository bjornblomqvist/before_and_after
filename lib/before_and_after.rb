module BeforeAndAfter

  LEFT_SIDE_LATER  = 1
  RIGHT_SIDE_LATER = -1
 
  # * +input_time+ - time to compare
  #
  #    Time.now.before?(2.hours.from_now)
  #
  def before?(input_time)
    (self.utc <=> input_time.utc) == -1
  end
  
  # * +input_time+ - time to compare
  #
  #    Time.now.after?(2.hours.ago)
  #
  def after?(input_time)
    (self.utc <=> input_time.utc) == 1
  end
  
  # * +time_span+ - time span in seconds
  #
  #    2.minutes.ago.within_last?(2.hours)
  #
  def within_last?(time_span)
    now = Time.now.utc
    self.utc.between?(now - time_span, now)
  end

  # * +time_span+ - time span in seconds
  #
  #    2.minutes.from_now.within_coming?(2.hours)
  #
  def within_coming?(time_span)
    now = Time.now.utc
    self.utc.between?(now, now +  time_span)
  end
end

Time.send :include , BeforeAndAfter

begin
  ActiveSupport::TimeWithZone.send :include , BeforeAndAfter
rescue => e
end