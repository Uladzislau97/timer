# frozen_string_literal: true

# Validates params for creating timer
class TimerContract < Dry::Validation::Contract
  params do
    required(:hours).value(:integer, gteq?: 0)
    required(:minutes).value(:integer, gteq?: 0)
    required(:seconds).value(:integer, gteq?: 0)
    required(:url).value(:string, format?: URI::DEFAULT_PARSER.make_regexp)
  end
end
