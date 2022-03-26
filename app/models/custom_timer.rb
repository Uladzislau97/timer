# frozen_string_literal: true

# == Schema Information
#
# Table name: custom_timers
#
#  id         :bigint           not null, primary key
#  url        :string           not null
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  seconds    :integer          not null
#
class CustomTimer < ApplicationRecord
  validates :seconds, numericality: { greater_than_or_equal_to: 0 }
  validates :url, presence: true
end
