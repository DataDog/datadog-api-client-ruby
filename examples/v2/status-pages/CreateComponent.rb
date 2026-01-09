# Create component returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateComponentRequest.new({
  data: DatadogAPIClient::V2::CreateComponentRequestData.new({
    attributes: DatadogAPIClient::V2::CreateComponentRequestDataAttributes.new({
      name: "5e2fd69be33e79aa",
      position: 0,
      type: DatadogAPIClient::V2::CreateComponentRequestDataAttributesType::COMPONENT,
    }),
    type: DatadogAPIClient::V2::StatusPagesComponentGroupType::COMPONENTS,
  }),
})
p api_instance.create_component(STATUS_PAGE_DATA_ID, body)
