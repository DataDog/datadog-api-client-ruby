# Schedule a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

body = DatadogAPIClient::V2::DowntimeCreateRequest.new({
  data: DatadogAPIClient::V2::DowntimeCreateRequestData.new({
    attributes: DatadogAPIClient::V2::DowntimeCreateRequestAttributes.new({
      message: "dark forest",
      monitor_identifier: DatadogAPIClient::V2::DowntimeMonitorIdentifierTags.new({
        monitor_tags: [
          "cat:hat",
        ],
      }),
      scope: "test:exampledowntime",
      schedule: DatadogAPIClient::V2::DowntimeScheduleOneTimeCreateUpdateRequest.new({
        start: nil,
      }),
    }),
    type: DatadogAPIClient::V2::DowntimeResourceType::DOWNTIME,
  }),
})
p api_instance.create_downtime(body)
