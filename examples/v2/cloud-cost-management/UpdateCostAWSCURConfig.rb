# Update Cloud Cost Management AWS CUR config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::AwsCURConfigPatchRequest.new({
  data: DatadogAPIClient::V2::AwsCURConfigPatchData.new({
    attributes: DatadogAPIClient::V2::AwsCURConfigPatchRequestAttributes.new({
      is_enabled: true,
    }),
    type: DatadogAPIClient::V2::AwsCURConfigPatchRequestType::AWS_CUR_CONFIG_PATCH_REQUEST,
  }),
})
p api_instance.update_cost_awscur_config("100", body)
