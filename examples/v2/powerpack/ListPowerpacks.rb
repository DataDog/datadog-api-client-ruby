# Get all powerpacks returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new
p api_instance.list_powerpacks()
