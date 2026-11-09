# Create an email access policy returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "private_status_page" in the system
PRIVATE_STATUS_PAGE_DATA_ID = ENV["PRIVATE_STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateStatusPageEmailAccessPolicyRequest.new({
  data: DatadogAPIClient::V2::CreateStatusPageEmailAccessPolicyRequestData.new({
    attributes: DatadogAPIClient::V2::CreateStatusPageEmailAccessPolicyRequestDataAttributes.new({
      effect: DatadogAPIClient::V2::AccessPolicyEffect::ALLOW,
      pattern: "@example.com",
    }),
    type: DatadogAPIClient::V2::StatusPageEmailAccessPolicyType::EMAIL_ACCESS_POLICIES,
  }),
})
p api_instance.create_email_access_policy(PRIVATE_STATUS_PAGE_DATA_ID, body)
