# List Apps returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.list_apps()
