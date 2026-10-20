# Patch a saved filter updates only the description of a saved list

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::PatchSavedFilterRequest.new({
  data: DatadogAPIClient::V2::PatchSavedFilterData.new({
    type: DatadogAPIClient::V2::SavedFilterDataType::SAVED_FILTERS,
    attributes: DatadogAPIClient::V2::PatchSavedFilterAttributes.new({
      description: "Updated synthetic test description.",
    }),
  }),
})
p api_instance.update_saved_filter_attributes("d8e3a81b-1505-4600-99c6-c563d01d46b1", body)
