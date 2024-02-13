# Get the details of a case returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CasesAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]
p api_instance.get_case(CASE_ID)
