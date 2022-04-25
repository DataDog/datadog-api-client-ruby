# Get Cost Across Multi-Org Account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_cost_by_org((Time.now + -3 * 86400))
