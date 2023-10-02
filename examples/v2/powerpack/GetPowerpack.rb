# Get a Powerpack returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new

# there is a valid "powerpack" in the system
POWERPACK_DATA_ID = ENV["POWERPACK_DATA_ID"]
p api_instance.get_powerpack(POWERPACK_DATA_ID)
