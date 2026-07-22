# Delete a case link returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_link("804cd682-55f6-4541-ab00-b608b282ea7d")
