# List all APM retention filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new
p api_instance.list_apm_retention_filters()
