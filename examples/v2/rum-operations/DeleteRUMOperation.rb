# Delete a RUM operation returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

# there is a valid "rum_operation" in the system
RUM_OPERATION_DATA_ID = ENV["RUM_OPERATION_DATA_ID"]
api_instance.delete_rum_operation(RUM_OPERATION_DATA_ID)
