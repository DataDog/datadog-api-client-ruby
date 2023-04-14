# Send logs returns "Request accepted for processing (always 202 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = [
  DatadogAPIClient::V2::HTTPLogItem.new({
    ddsource: "nginx",
    ddtags: "env:staging,version:5.1",
    hostname: "i-012345678",
    message: "2019-11-19T14:37:58,995 INFO [process.name][20081] Hello World",
    service: "payment",
    status: "info",
  }),
]
p api_instance.submit_log(body)
