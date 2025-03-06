# Delete a RUM retention filter returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
api_instance.delete_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", "fe34ee09-14cf-4976-9362-08044c0dea80")
