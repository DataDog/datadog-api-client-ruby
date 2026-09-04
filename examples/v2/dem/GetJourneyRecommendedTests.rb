# Get recommended tests for a DEM journey returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new
p api_instance.get_journey_recommended_tests("journey_id")
