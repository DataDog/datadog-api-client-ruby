# Delete Cloudflare account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new
api_instance.delete_cloudflare_account("account_id")
