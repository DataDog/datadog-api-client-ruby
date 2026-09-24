# Get all Container Image groups returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ContainerImagesAPI.new
opts = {
  group_by: "short_image",
}
p api_instance.list_container_images(opts)
