require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
event_id = 789 # Integer | The ID of the event.

begin
  # Get an event
  result = api_instance.get_event(event_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->get_event: #{e}"
end
