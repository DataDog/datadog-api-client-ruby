# Get a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

# there is a valid "opsgenie_service" in the system
OPSGENIE_SERVICE_DATA_ID = ENV["OPSGENIE_SERVICE_DATA_ID"]
p api_instance.get_opsgenie_service(OPSGENIE_SERVICE_DATA_ID)
