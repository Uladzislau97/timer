# frozen_string_literal: true

FactoryBot.define do
  factory :custom_timer, class: CustomTimer do
    seconds { 3930 }
    url { 'https://test.com' }
  end
end
