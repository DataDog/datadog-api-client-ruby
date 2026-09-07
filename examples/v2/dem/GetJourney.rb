# Get a DEM journey returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new
p api_instance.get_journey("journey_id")
