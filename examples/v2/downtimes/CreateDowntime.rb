# Schedule a downtime returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_downtime".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

body = DatadogAPIClient::V2::DowntimeCreateRequest.new({
  data: DatadogAPIClient::V2::DowntimeCreateData.new({
    attributes: DatadogAPIClient::V2::DowntimeAttributeCreateRequest.new({
      message: "dark forest",
      monitor_identifier: DatadogAPIClient::V2::DowntimeAttributeMonitorIdentifierTags.new({
        monitor_tags: [
          "cat:hat",
        ],
      }),
      scope: "test:exampledowntime",
      schedule: DatadogAPIClient::V2::DowntimeAttributeScheduleOneTimeCreateEditRequest.new({
        start: nil,
      }),
    }),
    type: DatadogAPIClient::V2::DowntimeResourceType::DOWNTIME,
  }),
})
p api_instance.create_downtime(body)
