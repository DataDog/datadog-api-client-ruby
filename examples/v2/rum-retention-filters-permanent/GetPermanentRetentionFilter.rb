# Get a permanent retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersPermanentAPI.new
p api_instance.get_permanent_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", "default_synthetics")
