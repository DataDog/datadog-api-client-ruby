# Update degradation returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

# there is a valid "degradation" in the system
DEGRADATION_DATA_ID = ENV["DEGRADATION_DATA_ID"]

body = DatadogAPIClient::V2::PatchDegradationRequest.new({
  data: DatadogAPIClient::V2::PatchDegradationRequestData.new({
    attributes: DatadogAPIClient::V2::PatchDegradationRequestDataAttributes.new({
      title: "Elevated API Latency in US1",
    }),
    id: DEGRADATION_DATA_ID,
    type: DatadogAPIClient::V2::PatchDegradationRequestDataType::DEGRADATIONS,
  }),
})
p api_instance.update_degradation(STATUS_PAGE_DATA_ID, DEGRADATION_DATA_ID, body)
