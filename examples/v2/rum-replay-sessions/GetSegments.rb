# Get segments returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplaySessionsAPI.new
p api_instance.get_segments("00000000-0000-0000-0000-000000000002", "00000000-0000-0000-0000-000000000001")
