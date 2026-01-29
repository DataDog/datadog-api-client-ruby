# Delete a notification rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_project_notification_rule("project_id", "notification_rule_id")
