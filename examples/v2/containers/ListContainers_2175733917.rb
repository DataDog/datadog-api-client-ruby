# Get All Container groups returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ContainersAPI.new
opts = {
  group_by: "short_image",
}
p api_instance.list_containers(opts)
