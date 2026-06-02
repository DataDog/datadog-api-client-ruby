# Get widgets from an image returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StegadographyAPI.new
p api_instance.get_stegadography_widgets(File.open("fixtures/stegadography/image.png", "r"))
