# Delete a case type returns "NotContent" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementTypeAPI.new

# there is a valid "case_type" in the system
CASE_TYPE_ID = ENV["CASE_TYPE_ID"]
api_instance.delete_case_type(CASE_TYPE_ID)
