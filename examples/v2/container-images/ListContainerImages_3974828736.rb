# Get all Container Image groups returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ContainerImagesAPI.new
opts = {
  group_by: "short_image",
}
p api_instance.list_container_images(opts)
