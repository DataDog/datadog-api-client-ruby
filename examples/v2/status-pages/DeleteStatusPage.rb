# Delete status page returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]
api_instance.delete_status_page(STATUS_PAGE_DATA_ID)
