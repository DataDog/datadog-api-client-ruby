# Get All Containers returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ContainersAPI.new
opts = {
  page_size: 2,
}
api_instance.list_containers_with_pagination(opts) { |item| puts item }
