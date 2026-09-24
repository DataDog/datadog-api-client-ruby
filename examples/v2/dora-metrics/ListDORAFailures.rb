# Get a list of incident events returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORAListFailuresRequest.new({
  data: DatadogAPIClient::V2::DORAListFailuresRequestData.new({
    attributes: DatadogAPIClient::V2::DORAListFailuresRequestAttributes.new({
      from: "2025-01-01T00:00:00Z",
      limit: 100,
      query: "severity:(SEV-1 OR SEV-2) env:production team:backend",
      sort: "-started_at",
      to: "2025-01-31T23:59:59Z",
    }),
    type: DatadogAPIClient::V2::DORAListFailuresRequestDataType::DORA_FAILURES_LIST_REQUEST,
  }),
})
p api_instance.list_dora_failures(body)
