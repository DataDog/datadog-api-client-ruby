# Get all powerpacks returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_powerpacks_with_pagination(opts) { |item| puts item }
