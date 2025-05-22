# Get a list of failure events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORAListFailuresRequest.new({
  data: DatadogAPIClient::V2::DORAListFailuresRequestData.new({
    attributes: DatadogAPIClient::V2::DORAListFailuresRequestAttributes.new({
      from: "2025-03-23T00:00:00Z",
      limit: 1,
      to: "2025-03-24T00:00:00Z",
    }),
    type: DatadogAPIClient::V2::DORAListFailuresRequestDataType::DORA_FAILURES_LIST_REQUEST,
  }),
})
p api_instance.list_dora_failures(body)
