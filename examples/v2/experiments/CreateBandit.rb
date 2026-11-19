# Create bandit returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_bandit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID"]
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID"]
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]

# there is a valid "experiment_subject_type" in the system
EXPERIMENT_SUBJECT_TYPE_DATA_ID = ENV["EXPERIMENT_SUBJECT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsCreateBanditV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateBanditV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsBanditV2DTODataType::BANDITS,
    attributes: DatadogAPIClient::V2::ExperimentsCreateBanditV2RequestDataAttributes.new({
      name: "bandit-14bb9543f523edde",
      datadog_flag_configuration: DatadogAPIClient::V2::ExperimentsBanditFlagConfigurationInputV2.new({
        feature_flag_id: FEATURE_FLAG_DATA_ID,
        environment_id: ENVIRONMENT_DATA_ID,
        targeting_rules: [],
      }),
      variants: [
        DatadogAPIClient::V2::ExperimentsBanditVariantInputV2.new({
          feature_flag_variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID,
          is_fallback: true,
        }),
        DatadogAPIClient::V2::ExperimentsBanditVariantInputV2.new({
          feature_flag_variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_1_ID,
        }),
      ],
      subject_type_id: EXPERIMENT_SUBJECT_TYPE_DATA_ID,
      tags: [
        "bdd",
      ],
    }),
  }),
})
p api_instance.create_bandit(body)
