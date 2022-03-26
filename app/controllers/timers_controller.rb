# frozen_string_literal: true

# Controller for setting and geting info about timers
class TimersController < ApplicationController
  def create
    validation_result = TimerContract.new.call(timer_params.to_h)

    if validation_result.failure?
      render json: { errors: validation_result.errors.to_h }, status: :bad_request
      return
    end

    id = TimerCreator.new(timer_params).call
    render json: { id: id }, status: :ok
  rescue StandardError
    render plain: 'Internal server error', status: :internal_server_error
  end

  def show; end

  private

  def timer_params
    params.require(:timer).permit(:hours, :minutes, :seconds, :url)
  end
end
