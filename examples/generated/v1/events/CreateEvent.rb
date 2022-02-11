require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
body = DatadogAPIClient::V1::EventCreateRequest.new({text: 'Oh boy!', title: 'Did you hear the news today?'}) # EventCreateRequest | Event request object

begin
  # Post an event
  result = api_instance.create_event(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->create_event: #{e}"
end
