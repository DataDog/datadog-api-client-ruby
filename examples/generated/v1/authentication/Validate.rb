require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AuthenticationAPI.new

begin
  # Validate API key
  result = api_instance.validate
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AuthenticationAPI->validate: #{e}"
end
