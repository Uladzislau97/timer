# frozen_string_literal: true

# Controller for setting and geting info about timers
class TimersController < ApplicationController
  def create
    validation_result = TimerContract.new.call(timer_params.to_h)
    render json: { errors: validation_result.errors }, status: :bad_request if validation_result.failure?

    TimerCreator.new(timer_params).call
  end

  def show; end

  private

  def timer_params
    params.require(:timer).permit(:hours, :minutes, :seconds, :url)
  end
end
