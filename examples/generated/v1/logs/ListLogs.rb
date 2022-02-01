require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsAPI.new
body = DatadogAPIClient::V1::LogsListRequest.new({time: DatadogAPIClient::V1::LogsListRequestTime.new({from: Time.parse('2020-02-02T02:02:02Z'), to: Time.parse('2020-02-02T20:20:20Z')})}) # LogsListRequest | Logs filter

begin
  # Search logs
  result = api_instance.list_logs(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsAPI->list_logs: #{e}"
end
