# Delete a DEM journey returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new
api_instance.delete_journey("journey_id")
