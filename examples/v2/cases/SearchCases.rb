# Search cases returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CasesAPI.new
p api_instance.search_cases()
