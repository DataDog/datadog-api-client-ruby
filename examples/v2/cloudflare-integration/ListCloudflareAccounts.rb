# List Cloudflare accounts returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new
p api_instance.list_cloudflare_accounts()
