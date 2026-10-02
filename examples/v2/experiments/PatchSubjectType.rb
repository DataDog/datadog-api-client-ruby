# Patch subject type returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_subject_type" in the system
EXPERIMENT_SUBJECT_TYPE_DATA_ID = ENV["EXPERIMENT_SUBJECT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchSubjectTypeV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsPatchSubjectTypeV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsSubjectTypeV2DTODataType::SUBJECT_TYPES,
    attributes: DatadogAPIClient::V2::ExperimentsPatchSubjectTypeV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde updated",
    }),
  }),
})
p api_instance.patch_subject_type(EXPERIMENT_SUBJECT_TYPE_DATA_ID, body)
