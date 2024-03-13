# Delete a custom destination returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "custom_destination" in the system
CUSTOM_DESTINATION_DATA_ID = ENV["CUSTOM_DESTINATION_DATA_ID"]
api_instance.delete_logs_custom_destination(CUSTOM_DESTINATION_DATA_ID)
