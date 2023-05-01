# Send logs returns "Response from server (always 200 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = [
  DatadogAPIClient::V1::HTTPLogItem.new({
    message: "Example-Log",
    ddtags: "host:ExampleLog",
  }),
]
p api_instance.submit_log(body)
