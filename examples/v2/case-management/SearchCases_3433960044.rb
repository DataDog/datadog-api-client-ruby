# Search cases returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
opts = {
  page_size: 2,
  filter: "status:closed",
}
api_instance.search_cases_with_pagination(opts) { |item| puts item }
