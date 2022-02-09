require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new
body = [DatadogAPIClient::V2::HTTPLogItem.new] # Array<HTTPLogItem> | Log to send (JSON format).
opts = {
  content_encoding: DatadogAPIClient::V2::ContentEncoding::GZIP, # ContentEncoding | HTTP header used to compress the media-type.
  ddtags: "env:prod,user:my-user", # String | Log tags can be passed as query parameters with `text/plain` content type.
}

begin
  # Send logs
  result = api_instance.submit_log(body, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->submit_log: #{e}"
end
