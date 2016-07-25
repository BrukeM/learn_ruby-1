class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds
    if seconds==0
      "00:00:00"
    else
      if seconds>=3600
        hours = seconds/3600
        seconds = seconds - (3600*hours)
      end
      if seconds>=60
        minutes = seconds/60
        seconds = seconds - (60*minutes)
      end
      if hours.nil?
        hours="00"
      elsif hours<10
        hours = "0"+hours.to_s
      else
        hours = hours.to_s
      end
      if minutes.nil?
        minutes="00"
      elsif minutes<10
        minutes = "0"+minutes.to_s
      else
        minutes = minutes.to_s
      end
      if seconds<10
        seconds = "0"+seconds.to_s
      else
        seconds = seconds.to_s
      end
      hours+":"+minutes+":"+seconds
    end
  end
end
