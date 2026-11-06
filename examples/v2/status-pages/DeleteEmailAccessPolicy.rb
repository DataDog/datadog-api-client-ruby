# Delete an email access policy returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new
api_instance.delete_email_access_policy("1234abcd-12ab-34cd-56ef-123456abcdef", "1234abcd-12ab-34cd-56ef-123456abcdef")
