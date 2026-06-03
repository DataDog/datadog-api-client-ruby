# Get available fields for usage summary returns "OK." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_usage_summary_available_fields()
