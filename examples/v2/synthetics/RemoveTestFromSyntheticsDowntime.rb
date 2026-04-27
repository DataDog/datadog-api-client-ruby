# Remove a test from a Synthetics downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.remove_test_from_synthetics_downtime("00000000-0000-0000-0000-000000000001", "abc-def-123")
