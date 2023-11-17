# Send a deployment event for DORA Metrics returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_dora_deployment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORADeploymentRequest.new({
  data: DatadogAPIClient::V2::DORADeploymentRequestData.new({
    attributes: DatadogAPIClient::V2::DORADeploymentRequestAttributes.new({
      finished_at: 1693491984000000000,
      git: DatadogAPIClient::V2::DORAGitInfo.new({
        commit_sha: "66adc9350f2cc9b250b69abddab733dd55e1a588",
        repository_url: "https://github.com/organization/example-repository",
      }),
      service: "shopist",
      started_at: 1693491974000000000,
      version: "v1.12.07",
    }),
  }),
})
p api_instance.create_dora_deployment(body)
