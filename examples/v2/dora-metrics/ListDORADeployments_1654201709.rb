# Get a list of deployment events returns deployments with date-time timestamps

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::DORAListDeploymentsRequest.new({
  data: DatadogAPIClient::V2::DORAListDeploymentsRequestData.new({
    attributes: DatadogAPIClient::V2::DORAListDeploymentsRequestAttributes.new({
      from: "2023-08-31T00:00:00Z",
      to: "2023-09-01T00:00:00Z",
    }),
    type: DatadogAPIClient::V2::DORAListDeploymentsRequestDataType::DORA_DEPLOYMENTS_LIST_REQUEST,
  }),
})
p api_instance.list_dora_deployments(body)
