# Create a schedule returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_fleet_schedule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new

body = DatadogAPIClient::V2::FleetScheduleCreateRequest.new({
  data: DatadogAPIClient::V2::FleetScheduleCreate.new({
    attributes: DatadogAPIClient::V2::FleetScheduleCreateAttributes.new({
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
p api_instance.create_fleet_schedule(body)
