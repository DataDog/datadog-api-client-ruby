# Get a RUM operation by name returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

# there is a valid "rum_operation" in the system
RUM_OPERATION_DATA_ATTRIBUTES_NAME = ENV["RUM_OPERATION_DATA_ATTRIBUTES_NAME"]
p api_instance.get_rum_operation_by_name(RUM_OPERATION_DATA_ATTRIBUTES_NAME)
