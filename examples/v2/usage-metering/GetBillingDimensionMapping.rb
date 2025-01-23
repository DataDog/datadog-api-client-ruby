# Get billing dimension mapping for usage endpoints returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_billing_dimension_mapping()
