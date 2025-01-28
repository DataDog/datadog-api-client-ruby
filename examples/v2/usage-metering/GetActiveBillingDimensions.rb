# Get active billing dimensions for cost attribution returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_active_billing_dimensions()
