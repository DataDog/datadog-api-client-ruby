# Search inferred DEM journeys returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new
p api_instance.search_inferred_journeys()
