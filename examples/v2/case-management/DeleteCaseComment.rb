# Delete case comment returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

# there is a valid "comment" in the system
COMMENT_ID = ENV["COMMENT_ID"]
api_instance.delete_case_comment(CASE_ID, COMMENT_ID)
