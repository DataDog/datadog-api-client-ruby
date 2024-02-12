# Unarchive case returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CasesAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseEmptyRequest.new({
  data: DatadogAPIClient::V2::CaseEmpty.new({
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.unarchive_case(CASE_ID, body)
