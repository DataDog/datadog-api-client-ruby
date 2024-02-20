# Search cases returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.search_cases_with_pagination() { |item| puts item }
