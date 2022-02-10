require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0 # Integer | Specific page number to return.
}

begin
  # List rules
  result = api_instance.list_security_monitoring_rules(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->list_security_monitoring_rules: #{e}"
end
