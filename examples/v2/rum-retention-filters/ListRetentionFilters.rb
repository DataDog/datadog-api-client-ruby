# Get all RUM retention filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.list_retention_filters("1d4b9c34-7ac4-423a-91cf-9902d926e9b3")
