# Get widgets from an image returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_widgets_from_image".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StegadographyAPI.new
p api_instance.get_widgets_from_image()
