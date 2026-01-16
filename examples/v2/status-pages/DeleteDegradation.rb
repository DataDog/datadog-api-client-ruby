# Delete degradation returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

# there is a valid "degradation" in the system
DEGRADATION_DATA_ID = ENV["DEGRADATION_DATA_ID"]
api_instance.delete_degradation(STATUS_PAGE_DATA_ID, DEGRADATION_DATA_ID)
