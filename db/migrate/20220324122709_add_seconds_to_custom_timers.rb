# frozen_string_literal: true

class AddSecondsToCustomTimers < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_timers, :seconds, :integer, null: false
  end
end
