# Delete a RUM operation link returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

# there is a valid "rum_operation_strong_link" in the system
RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_FEATURE_ID = ENV["RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_FEATURE_ID"]
RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_OPERATION_ID = ENV["RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_OPERATION_ID"]
api_instance.delete_rum_operation_strong_link(RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_OPERATION_ID, RUM_OPERATION_STRONG_LINK_DATA_ATTRIBUTES_FEATURE_ID)
