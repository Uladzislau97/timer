class CreateCustomTimers < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_timers do |t|
      t.datetime :value, null: false, index: true
      t.string :url, null: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
