# Publish status page returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "unpublished_status_page" in the system
UNPUBLISHED_STATUS_PAGE_DATA_ID = ENV["UNPUBLISHED_STATUS_PAGE_DATA_ID"]
api_instance.publish_status_page(UNPUBLISHED_STATUS_PAGE_DATA_ID)
