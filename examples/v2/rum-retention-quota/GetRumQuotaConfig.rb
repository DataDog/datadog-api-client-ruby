# Get a RUM retention quota configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionQuotaAPI.new
p api_instance.get_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, "ced16651-97b6-4e67-8590-8caec3af0695")
