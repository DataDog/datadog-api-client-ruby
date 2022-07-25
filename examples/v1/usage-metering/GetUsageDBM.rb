# Get hourly usage for database monitoring returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_usage_dbm("2021-11-11T11:11:11.111+00:00")
