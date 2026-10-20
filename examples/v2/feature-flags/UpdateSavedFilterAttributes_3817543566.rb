# Patch a saved filter accepts the current timestamp for metadata

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::PatchSavedFilterRequest.new({
  data: DatadogAPIClient::V2::PatchSavedFilterData.new({
    attributes: DatadogAPIClient::V2::PatchSavedFilterAttributes.new({
      description: "Metadata with current timestamp.",
      last_updated_at: "2026-10-16T20:20:29Z",
    }),
    type: DatadogAPIClient::V2::SavedFilterDataType::SAVED_FILTERS,
  }),
})
p api_instance.update_saved_filter_attributes("a8c393b4-3a9c-48fd-aa48-402c97e8d9c9", body)
