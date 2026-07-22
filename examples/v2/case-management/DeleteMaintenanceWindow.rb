# Delete a maintenance window returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_maintenance_window("maintenance_window_id")
