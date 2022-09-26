# Get estimated cost across your account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_estimated_cost_by_org()
