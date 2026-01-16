# Update component returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::PatchComponentRequest.new({
  data: DatadogAPIClient::V2::PatchComponentRequestData.new({
    attributes: DatadogAPIClient::V2::PatchComponentRequestDataAttributes.new({
      name: "Logs Indexing",
    }),
    id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID,
    type: DatadogAPIClient::V2::StatusPagesComponentGroupType::COMPONENTS,
  }),
})
p api_instance.update_component(STATUS_PAGE_DATA_ID, STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID, body)
