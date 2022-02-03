require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
host_name = "host_name_example" # String | Name of the host to unmute.

begin
  # Unmute a host
  result = api_instance.unmute_host(host_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling HostsAPI->unmute_host: #{e}"
end
