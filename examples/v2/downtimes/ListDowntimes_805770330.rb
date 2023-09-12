# Get all downtimes returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_downtimes_with_pagination(opts) { |item| puts item }
