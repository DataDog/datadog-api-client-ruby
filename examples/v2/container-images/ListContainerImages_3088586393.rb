# Get all Container Images returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_container_images".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ContainerImagesAPI.new
opts = {
  page_size: 2,
}
api_instance.list_container_images_with_pagination(opts) { |item| puts item }
