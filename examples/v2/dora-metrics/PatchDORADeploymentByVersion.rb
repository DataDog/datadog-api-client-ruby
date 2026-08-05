# Patch a deployment event by version returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.patch_dora_deployment_by_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORADeploymentPatchByVersionRequest.new({
  data: DatadogAPIClient::V2::DORADeploymentPatchByVersionRequestData.new({
    attributes: DatadogAPIClient::V2::DORADeploymentPatchByVersionRequestAttributes.new({
      change_failure: true,
      env: "production",
      remediation: DatadogAPIClient::V2::DORADeploymentPatchRemediation.new({
        type: DatadogAPIClient::V2::DORADeploymentPatchRemediationType::ROLLBACK,
      }),
      service: "my-service",
      version: "v1.2.3",
    }),
    type: DatadogAPIClient::V2::DORADeploymentPatchRequestDataType::DORA_DEPLOYMENT_PATCH_REQUEST,
  }),
})
p api_instance.patch_dora_deployment_by_version(body)
