# Delete an email access policy returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "private_status_page" in the system
PRIVATE_STATUS_PAGE_DATA_ID = ENV["PRIVATE_STATUS_PAGE_DATA_ID"]

# there is a valid "email_access_policy" in the system
EMAIL_ACCESS_POLICY_DATA_ID = ENV["EMAIL_ACCESS_POLICY_DATA_ID"]
api_instance.delete_email_access_policy(PRIVATE_STATUS_PAGE_DATA_ID, EMAIL_ACCESS_POLICY_DATA_ID)
