# List email access policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "private_status_page" in the system
PRIVATE_STATUS_PAGE_DATA_ID = ENV["PRIVATE_STATUS_PAGE_DATA_ID"]
p api_instance.list_email_access_policies(PRIVATE_STATUS_PAGE_DATA_ID)
