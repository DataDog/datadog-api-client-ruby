# Create status page returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::CreateStatusPageRequest.new({
  data: DatadogAPIClient::V2::CreateStatusPageRequestData.new({
    attributes: DatadogAPIClient::V2::CreateStatusPageRequestDataAttributes.new({
      name: "[DD Integration Tests] 5e2fd69be33e79aa",
      domain_prefix: "dd-integrations-tests-5e2fd69be33e79aa",
      enabled: true,
      type: DatadogAPIClient::V2::CreateStatusPageRequestDataAttributesType::INTERNAL,
      visualization_type: DatadogAPIClient::V2::CreateStatusPageRequestDataAttributesVisualizationType::BARS_AND_UPTIME_PERCENTAGE,
    }),
    type: DatadogAPIClient::V2::StatusPageDataType::STATUS_PAGES,
  }),
})
p api_instance.create_status_page(body)
