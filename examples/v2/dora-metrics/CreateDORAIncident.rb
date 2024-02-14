# Send an incident event for DORA Metrics returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_dora_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORAIncidentRequest.new({
  data: DatadogAPIClient::V2::DORAIncidentRequestData.new({
    attributes: DatadogAPIClient::V2::DORAIncidentRequestAttributes.new({
      finished_at: 1707842944600000000,
      git: DatadogAPIClient::V2::DORAGitInfo.new({
        commit_sha: "66adc9350f2cc9b250b69abddab733dd55e1a588",
        repository_url: "https://github.com/organization/example-repository",
      }),
      name: "Webserver is down failing all requests",
      services: [
        "shopist",
      ],
      severity: "High",
      started_at: 1707842944500000000,
      team: "backend",
      version: "v1.12.07",
    }),
  }),
})
p api_instance.create_dora_incident(body)
