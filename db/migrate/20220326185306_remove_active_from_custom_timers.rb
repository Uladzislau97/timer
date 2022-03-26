# frozen_string_literal: true

class RemoveActiveFromCustomTimers < ActiveRecord::Migration[7.0]
  def up
    remove_column :custom_timers, :active
  end

  def down
    add_column :custom_timers, :active, :boolean, default: true
  end
end
