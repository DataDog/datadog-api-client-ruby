# Get maintenance returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

# there is a valid "maintenance" in the system
MAINTENANCE_DATA_ID = ENV["MAINTENANCE_DATA_ID"]
p api_instance.get_maintenance(STATUS_PAGE_DATA_ID, MAINTENANCE_DATA_ID)
