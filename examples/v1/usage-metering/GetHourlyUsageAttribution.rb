# Get hourly usage attribution returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_hourly_usage_attribution((Time.now + -3 * 86400), HourlyUsageAttributionUsageType::INFRA_HOST_USAGE)
