# frozen_string_literal: true

# Service to send http requests
class HttpService
  def self.post(url)
    uri = URI.parse(url)
    Net::HTTP.post_form(uri, {})
  end
end
