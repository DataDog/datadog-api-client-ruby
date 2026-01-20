# Get all suppression rules returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "suppression" in the system
SUPPRESSION_DATA_ID = ENV["SUPPRESSION_DATA_ID"]

# there is a valid "suppression2" in the system
SUPPRESSION2_DATA_ID = ENV["SUPPRESSION2_DATA_ID"]
opts = {
  page_size: 1,
  page_number: 0,
  query: "id:3dd-0uc-h1s OR id:886e6c3e-e543-049c-ee1b-56a1110295c0",
}
p api_instance.list_security_monitoring_suppressions(opts)
