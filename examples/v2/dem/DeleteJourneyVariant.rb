# Delete a DEM journey variant returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DEMAPI.new
api_instance.delete_journey_variant("variant_id")
