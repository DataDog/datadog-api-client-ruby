require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = {
  from: 789, # Integer | Number of seconds from which you want to get total number of active hosts.
}

begin
  # Get the total number of active hosts
  result = api_instance.get_host_totals(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling HostsAPI->get_host_totals: #{e}"
end
