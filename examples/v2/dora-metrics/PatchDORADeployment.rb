# Patch a deployment event returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORADeploymentPatchRequest.new({
  data: DatadogAPIClient::V2::DORADeploymentPatchRequestData.new({
    attributes: DatadogAPIClient::V2::DORADeploymentPatchRequestAttributes.new({
      change_failure: true,
      remediation: DatadogAPIClient::V2::DORADeploymentPatchRemediation.new({
        id: "eG42zNIkVjM",
        type: DatadogAPIClient::V2::DORADeploymentPatchRemediationType::ROLLBACK,
      }),
    }),
    id: "z_RwVLi7v4Y",
    type: DatadogAPIClient::V2::DORADeploymentPatchRequestDataType::DORA_DEPLOYMENT_PATCH_REQUEST,
  }),
})
p api_instance.patch_dora_deployment("deployment_id", body)
