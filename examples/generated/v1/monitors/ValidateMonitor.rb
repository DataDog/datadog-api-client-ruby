require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
body = DatadogAPIClient::V1::Monitor.new({ query: "avg(last_5m):sum:system.net.bytes_rcvd{host:host0} > 100", type: DatadogAPIClient::V1::MonitorType::COMPOSITE }) # Monitor | Monitor request object

begin
  # Validate a monitor
  result = api_instance.validate_monitor(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->validate_monitor: #{e}"
end
