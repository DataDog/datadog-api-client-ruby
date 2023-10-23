# Delete a powerpack returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new

# there is a valid "powerpack" in the system
POWERPACK_DATA_ID = ENV["POWERPACK_DATA_ID"]
api_instance.delete_powerpack(POWERPACK_DATA_ID)
