require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
opts = {
  current_only: true # Boolean | Only return downtimes that are active when the request is made.
}

begin
  # Get all downtimes
  result = api_instance.list_downtimes(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_downtimes: #{e}"
end
