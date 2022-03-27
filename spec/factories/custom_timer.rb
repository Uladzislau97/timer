# frozen_string_literal: true

FactoryBot.define do
  factory :custom_timer do
    hours { 1 }
    mintues { 5 }
    seconds { 30 }
    url { 'https://test.com' }
  end
end
