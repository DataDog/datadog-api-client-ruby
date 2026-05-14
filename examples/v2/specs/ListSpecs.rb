# List API specs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpecsAPI.new
p api_instance.list_specs()
