# Send gzip logs returns "Response from server (always 200 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = [
  DatadogAPIClient::V1::HTTPLogItem.new({
    message: "Example-Log",
    ddtags: "host:ExampleLog",
  }),
]
opts = {
  content_encoding: ContentEncoding::GZIP,
}
p api_instance.submit_log(body, opts)
