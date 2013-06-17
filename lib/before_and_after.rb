module BeforeAndAfter

  LEFT_SIDE_LATER  = 1
  RIGHT_SIDE_LATER = -1
  
  def before?(input_time)
    (self <=> input_time) == RIGHT_SIDE_LATER
  end
  
  def after?(input_time)
    (self <=> input_time) == LEFT_SIDE_LATER
  end
  
  def within_last?(time_span)
    self.between?(Time.now - time_span, Time.now)
  end

  def within_coming?(time_span)
    self.between?(Time.now, Time.now +  time_span)
  end

end

Time.send :include , BeforeAndAfter