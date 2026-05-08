# Update a dataset restriction returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_dataset_restriction".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatasetRestrictionsAPI.new

body = DatadogAPIClient::V2::DatasetRestrictionUpdateRequest.new({
  data: DatadogAPIClient::V2::DatasetRestrictionUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::DatasetRestrictionUpdateRequestAttributes.new({
      ownership_mode: DatadogAPIClient::V2::DatasetRestrictionOwnershipMode::TEAM_TAG_BASED,
      restriction_mode: DatadogAPIClient::V2::DatasetRestrictionRestrictionMode::DEFAULT_HIDE,
      unrestricted_principals: [],
    }),
    type: DatadogAPIClient::V2::DatasetRestrictionsType::DATASET_RESTRICTIONS,
  }),
})
p api_instance.update_dataset_restriction("product_type", body)
