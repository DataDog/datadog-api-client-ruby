# Delete a private location returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
api_instance.delete_private_location("location_id")
