# Get hourly usage by product family returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_hourly_usage((Time.now + -3 * 86400), "infra_hosts")
