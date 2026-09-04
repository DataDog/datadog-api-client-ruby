# Ignore an inferred DEM journey returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new
api_instance.ignore_inferred_journey("journey_id")
