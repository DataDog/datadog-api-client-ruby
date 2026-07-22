# Unwatch a case returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.unwatch_case("case_id", "user_uuid")
