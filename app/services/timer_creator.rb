# frozen_string_literal: true

# Creates CustomTimer record
class TimerCreator
  SECONDS_IN_MINUTE = 60
  SECONDS_IN_HOUR = 3600

  def initialize(timer_params)
    @seconds = (timer_params[:hours] * SECONDS_IN_HOUR) +
               (timer_params[:minutes] * SECONDS_IN_MINUTE) +
               timer_params[:seconds]
    @url = timer_params[:url]
  end

  def call
    timer = CustomTimer.new(seconds: @seconds, url: @url)
    timer.save!
  end
end
