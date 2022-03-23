# == Schema Information
#
# Table name: custom_timers
#
#  id         :bigint           not null, primary key
#  value      :datetime         not null
#  url        :string           not null
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CustomTimer < ApplicationRecord
end
