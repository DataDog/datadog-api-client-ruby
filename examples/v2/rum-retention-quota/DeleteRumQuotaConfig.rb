# Delete a RUM retention quota configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionQuotaAPI.new
api_instance.delete_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, "ced16651-97b6-4e67-8590-8caec3af0695")
