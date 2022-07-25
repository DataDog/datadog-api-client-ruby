# Get hourly usage for online archive returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_usage_online_archive("2021-11-11T11:11:11.111+00:00")
