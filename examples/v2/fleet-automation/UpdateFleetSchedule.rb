# Update a schedule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_fleet_schedule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetSchedulePatchRequest.new({
  data: DatadogAPIClient::V2::FleetSchedulePatch.new({
    attributes: DatadogAPIClient::V2::FleetSchedulePatchAttributes.new({
      name: "Weekly Production Agent Updates",
      query: "env:prod AND service:web",
      rule: DatadogAPIClient::V2::FleetScheduleRecurrenceRule.new({
        days_of_week: [
          "Mon",
          "Wed",
          "Fri",
        ],
        maintenance_window_duration: 1200,
        start_maintenance_window: "02:00",
        timezone: "America/New_York",
      }),
      status: DatadogAPIClient::V2::FleetScheduleStatus::ACTIVE,
      version_to_latest: 0,
    }),
    type: DatadogAPIClient::V2::FleetScheduleResourceType::SCHEDULE,
  }),
})
p api_instance.update_fleet_schedule("id", body)
