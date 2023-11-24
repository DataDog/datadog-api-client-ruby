# Delete Cloudflare account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new

# there is a valid "cloudflare_account" in the system
CLOUDFLARE_ACCOUNT_DATA_ID = ENV["CLOUDFLARE_ACCOUNT_DATA_ID"]
api_instance.delete_cloudflare_account(CLOUDFLARE_ACCOUNT_DATA_ID)
