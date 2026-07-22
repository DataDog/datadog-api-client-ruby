# Watch a case returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.watch_case("case_id", "user_uuid")
