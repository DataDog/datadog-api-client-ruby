# Delete a RUM retention quota configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionQuotasAPI.new
api_instance.delete_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b")
