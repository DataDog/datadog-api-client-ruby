# Update bandit returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_bandit".to_sym] = true
  config.unstable_operations["v2.patch_bandit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "bandit" in the system
BANDIT_DATA_ID = ENV["BANDIT_DATA_ID"]

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID"]
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchBanditV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsPatchBanditV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsBanditV2DTODataType::BANDITS,
    id: BANDIT_DATA_ID,
    attributes: DatadogAPIClient::V2::ExperimentsPatchBanditV2RequestDataAttributes.new({
      name: "bandit-14bb9543f523edde-renamed",
      variants: [
        DatadogAPIClient::V2::ExperimentsBanditVariantInputV2.new({
          feature_flag_variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID,
        }),
        DatadogAPIClient::V2::ExperimentsBanditVariantInputV2.new({
          feature_flag_variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID,
          is_fallback: true,
        }),
      ],
    }),
  }),
})
p api_instance.patch_bandit(BANDIT_DATA_ID, body)
