class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds
    @seconds
  end

  def seconds=(time_seconds)
    @seconds = time_seconds

    if @seconds >= 60 && @seconds < 3600
      @minutes = @seconds / 60
      @seconds = @seconds % 60

    elsif @seconds >= 3600
      @hours = @seconds / 3600
      @seconds = @seconds % 3600

      if @seconds >= 60
        @minutes = @seconds / 60
        @seconds = @seconds % 60
      end
    end
  end

  def time_string
    if @hours < 10
      @hours = @hours.to_s.rjust(2, '0')
    else
      @hours = @hours.to_s
    end

    if @minutes < 10
      @minutes = @minutes.to_s.rjust(2, '0')
    else
      @minutes = @minutes.to_s
    end

    if @seconds < 10
      @seconds = @seconds.to_s.rjust(2, '0')
    else
      @seconds = @seconds.to_s
    end

    return @hours + ':' + @minutes + ':' + @seconds
  end

end
