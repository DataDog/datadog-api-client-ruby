# Update a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

# there is a valid "downtime_v2" in the system
DOWNTIME_V2_DATA_ID = ENV["DOWNTIME_V2_DATA_ID"]

body = DatadogAPIClient::V2::DowntimeUpdateRequest.new({
  data: DatadogAPIClient::V2::DowntimeUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::DowntimeUpdateRequestAttributes.new({
      message: "light speed",
    }),
    id: DOWNTIME_V2_DATA_ID,
    type: DatadogAPIClient::V2::DowntimeResourceType::DOWNTIME,
  }),
})
p api_instance.update_downtime(DOWNTIME_V2_DATA_ID, body)
