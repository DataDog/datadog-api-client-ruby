# Update a downtime returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_downtime".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

# there is a valid "downtime_v2" in the system
DOWNTIME_V2_DATA_ID = ENV["DOWNTIME_V2_DATA_ID"]

body = DatadogAPIClient::V2::DowntimeEditRequest.new({
  data: DatadogAPIClient::V2::DowntimeEditData.new({
    attributes: DatadogAPIClient::V2::DowntimeAttributeEditRequest.new({
      message: "light speed",
    }),
    id: DOWNTIME_V2_DATA_ID,
    type: DatadogAPIClient::V2::DowntimeResourceType::DOWNTIME,
  }),
})
p api_instance.update_downtime(DOWNTIME_V2_DATA_ID, body)
