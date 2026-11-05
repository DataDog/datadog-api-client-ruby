# List email access policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new
p api_instance.list_email_access_policies("1234abcd-12ab-34cd-56ef-123456abcdef")
