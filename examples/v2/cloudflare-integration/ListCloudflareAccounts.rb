# List Cloudflare accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new
p api_instance.list_cloudflare_accounts()
