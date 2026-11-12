# Update Custom Costs file returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

# there is a valid "custom_costs_file" in the system
CUSTOM_COSTS_FILE_DATA_ID = ENV["CUSTOM_COSTS_FILE_DATA_ID"]

body = DatadogAPIClient::V2::CustomCostsFileUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomCostsFileUpdateData.new({
    attributes: DatadogAPIClient::V2::CustomCostsFileUpdateAttributes.new({
      ai_provider: true,
    }),
    id: CUSTOM_COSTS_FILE_DATA_ID,
    type: DatadogAPIClient::V2::CustomCostsFileUpdateType::COST_METADATA,
  }),
})
p api_instance.update_custom_costs_file(CUSTOM_COSTS_FILE_DATA_ID, body)
