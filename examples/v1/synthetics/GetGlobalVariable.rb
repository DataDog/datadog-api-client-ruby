# Get a global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_global_variable" in the system
SYNTHETICS_GLOBAL_VARIABLE_ID = ENV["SYNTHETICS_GLOBAL_VARIABLE_ID"]
p api_instance.get_global_variable(SYNTHETICS_GLOBAL_VARIABLE_ID)
