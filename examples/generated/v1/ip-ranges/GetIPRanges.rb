require "datadog_api_client"
api_instance = DatadogAPIClient::V1::IPRangesAPI.new

begin
  # List IP Ranges
  result = api_instance.get_ip_ranges
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling IPRangesAPI->get_ip_ranges: #{e}"
end
