# Get on demand concurrency cap

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_on_demand_concurrency_cap()
