# Replace experiment protocol returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "published_protocol" in the system
PUBLISHED_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT = ENV["PUBLISHED_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT"]
PUBLISHED_PROTOCOL_DATA_ID = ENV["PUBLISHED_PROTOCOL_DATA_ID"]

# there is a valid "experiment_subject_type" in the system
EXPERIMENT_SUBJECT_TYPE_DATA_ID = ENV["EXPERIMENT_SUBJECT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsReplaceExperimentProtocolRequest.new({
  data: DatadogAPIClient::V2::ExperimentsReplaceExperimentProtocolRequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPublicProtocolResponseDataType::PROTOCOLS,
    id: PUBLISHED_PROTOCOL_DATA_ID,
    attributes: DatadogAPIClient::V2::ExperimentsReplaceExperimentProtocolRequestDataAttributes.new({
      subject_type_id: EXPERIMENT_SUBJECT_TYPE_DATA_ID,
      is_equal_split_enforced: false,
      is_minimum_duration_enabled: false,
      is_duration_required_to_start: false,
      is_metric_limit_enabled: false,
      metric_groups: [],
      default_duration_days: 14,
    }),
  }),
})
opts = {
  expected_updated_at: PUBLISHED_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT,
}
p api_instance.replace_experiment_protocol(PUBLISHED_PROTOCOL_DATA_ID, body, opts)
