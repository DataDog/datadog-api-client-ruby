# Create degradation returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateDegradationRequest.new({
  data: DatadogAPIClient::V2::CreateDegradationRequestData.new({
    attributes: DatadogAPIClient::V2::CreateDegradationRequestDataAttributes.new({
      components_affected: [
        DatadogAPIClient::V2::CreateDegradationRequestDataAttributesComponentsAffectedItems.new({
          id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
          status: DatadogAPIClient::V2::StatusPagesComponentDataAttributesStatus::MAJOR_OUTAGE,
        }),
      ],
      description: "Our API is experiencing elevated latency. We are investigating the issue.",
      status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::INVESTIGATING,
      title: "Elevated API Latency",
    }),
    type: DatadogAPIClient::V2::PatchDegradationRequestDataType::DEGRADATIONS,
  }),
})
p api_instance.create_degradation(STATUS_PAGE_DATA_ID, body)
