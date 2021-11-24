# Get all monitor details returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
p api_instance.list_monitors()
