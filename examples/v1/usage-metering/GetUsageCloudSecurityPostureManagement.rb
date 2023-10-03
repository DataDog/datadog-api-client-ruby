# Get hourly usage for CSM Pro returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_usage_cloud_security_posture_management((Time.now + -3 * 86400))
