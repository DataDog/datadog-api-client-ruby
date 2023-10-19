# Get All Container groups returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_containers".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ContainersAPI.new
opts = {
  group_by: "short_image",
}
p api_instance.list_containers(opts)
