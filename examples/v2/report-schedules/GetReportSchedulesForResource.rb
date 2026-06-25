# Get report schedules for a resource returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new
p api_instance.get_report_schedules_for_resource(ReportScheduleResourceType::DASHBOARD, "resource_id")
