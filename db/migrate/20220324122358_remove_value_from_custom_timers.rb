# frozen_string_literal: true

class RemoveValueFromCustomTimers < ActiveRecord::Migration[7.0]
  def up
    remove_index :custom_timers, name: 'index_custom_timers_on_value'
    remove_column :custom_timers, :value
  end

  def down
    add_column :custom_timers, :value, :datetime, null: false
    add_index :custom_timers, :value
  end
end
