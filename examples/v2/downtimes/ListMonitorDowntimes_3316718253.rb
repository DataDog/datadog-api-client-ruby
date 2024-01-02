# Get active downtimes for a monitor returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
api_instance.list_monitor_downtimes_with_pagination(9223372036854775807) { |item| puts item }
