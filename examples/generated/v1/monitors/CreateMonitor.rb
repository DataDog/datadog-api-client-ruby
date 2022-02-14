require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
body = DatadogAPIClient::V1::Monitor.new({ query: "avg(last_5m):sum:system.net.bytes_rcvd{host:host0} > 100", type: DatadogAPIClient::V1::MonitorType::COMPOSITE }) # Monitor | Create a monitor request body.

begin
  # Create a monitor
  result = api_instance.create_monitor(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->create_monitor: #{e}"
end
