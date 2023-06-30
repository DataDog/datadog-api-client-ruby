# Get a list of spans returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansAPI.new
p api_instance.list_spans_get()
