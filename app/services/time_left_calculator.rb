# frozen_string_literal: true

# Calculate time till timer end
class TimeLeftCalculator
  def self.call(timer)
    finish_time = timer.created_at + timer.seconds.seconds
    time_diff = (finish_time - Time.now.utc).round
    time_diff.negative? ? 0 : time_diff
  end
end
