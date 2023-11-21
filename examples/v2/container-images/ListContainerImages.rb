# Get all Container Images returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ContainerImagesAPI.new
p api_instance.list_container_images()
