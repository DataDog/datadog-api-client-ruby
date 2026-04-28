# Update a Synthetics downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsDowntimeRequest.new({
  data: DatadogAPIClient::V2::SyntheticsDowntimeDataRequest.new({
    attributes: DatadogAPIClient::V2::SyntheticsDowntimeDataAttributesRequest.new({
      is_enabled: true,
      name: "Weekly maintenance",
      test_ids: [
        "abc-def-123",
      ],
      time_slots: [
        DatadogAPIClient::V2::SyntheticsDowntimeTimeSlotRequest.new({
          duration: 3600,
          start: DatadogAPIClient::V2::SyntheticsDowntimeTimeSlotDate.new({
            day: 15,
            hour: 10,
            minute: 30,
            month: 1,
            year: 2024,
          }),
          timezone: "Europe/Paris",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::SyntheticsDowntimeResourceType::DOWNTIME,
  }),
})
p api_instance.update_synthetics_downtime("00000000-0000-0000-0000-000000000001", body)
