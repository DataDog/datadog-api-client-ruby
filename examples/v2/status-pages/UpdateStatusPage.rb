# Update status page returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::PatchStatusPageRequest.new({
  data: DatadogAPIClient::V2::PatchStatusPageRequestData.new({
    attributes: DatadogAPIClient::V2::PatchStatusPageRequestDataAttributes.new({
      name: "[DD Integration Tests] 5e2fd69be33e79aa",
    }),
    id: STATUS_PAGE_DATA_ID,
    type: DatadogAPIClient::V2::StatusPageDataType::STATUS_PAGES,
  }),
})
p api_instance.update_status_page(STATUS_PAGE_DATA_ID, body)
