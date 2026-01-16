# Delete component returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]
api_instance.delete_component(STATUS_PAGE_DATA_ID, STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_ID)
