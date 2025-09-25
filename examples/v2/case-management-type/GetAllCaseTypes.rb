# Get all case types returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementTypeAPI.new
p api_instance.get_all_case_types()
