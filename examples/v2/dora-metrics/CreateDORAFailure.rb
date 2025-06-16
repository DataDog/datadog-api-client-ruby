# Send a failure event for DORA Metrics returns "OK - but delayed due to incident" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORAFailureRequest.new({
  data: DatadogAPIClient::V2::DORAFailureRequestData.new({
    attributes: DatadogAPIClient::V2::DORAFailureRequestAttributes.new({
      custom_tags: [
        "language:java",
        "department:engineering",
      ],
      env: "staging",
      finished_at: 1693491984000000000,
      git: DatadogAPIClient::V2::DORAGitInfo.new({
        commit_sha: "66adc9350f2cc9b250b69abddab733dd55e1a588",
        repository_url: "https://github.com/organization/example-repository",
      }),
      name: "Webserver is down failing all requests.",
      services: [
        "shopist",
      ],
      severity: "High",
      started_at: 1693491974000000000,
      team: "backend",
      version: "v1.12.07",
    }),
  }),
})
p api_instance.create_dora_failure(body)
