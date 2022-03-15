# Send deflate logs returns "Response from server (always 200 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = [
  DatadogAPIClient::V1::HTTPLogItem.new({
    message: "Example-Send_deflate_logs_returns_Response_from_server_always_200_empty_JSON_response",
    ddtags: "host:ExampleSenddeflatelogsreturnsResponsefromserveralways200emptyJSONresponse",
  }),
]
opts = {
  content_encoding: ContentEncoding::DEFLATE,
}
p api_instance.submit_log(body, opts)
