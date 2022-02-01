require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
opts = {
  body: DatadogAPIClient::V2::LogsListRequest.new # LogsListRequest | 
}

begin
  # Search logs
  result = api_instance.list_logs(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs: #{e}"
end
