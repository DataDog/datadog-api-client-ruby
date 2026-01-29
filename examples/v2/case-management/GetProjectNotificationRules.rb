# Get notification rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.get_project_notification_rules("project_id")
