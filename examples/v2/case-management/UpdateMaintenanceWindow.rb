# Update a maintenance window returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_maintenance_window".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::MaintenanceWindowUpdateRequest.new({
  data: DatadogAPIClient::V2::MaintenanceWindowUpdate.new({
    attributes: DatadogAPIClient::V2::MaintenanceWindowUpdateAttributes.new({}),
    type: DatadogAPIClient::V2::MaintenanceWindowResourceType::MAINTENANCE_WINDOW,
  }),
})
p api_instance.update_maintenance_window("maintenance_window_id", body)
