# Delete a RUM retention quota configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionQuotasAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]
api_instance.delete_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, RUM_APPLICATION_DATA_ID)
