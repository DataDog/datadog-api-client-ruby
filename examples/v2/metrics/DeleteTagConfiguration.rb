# Delete a tag configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_tag_configuration] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.delete_tag_configuration("ExampleDeleteatagconfigurationreturnsNoContentresponse")
