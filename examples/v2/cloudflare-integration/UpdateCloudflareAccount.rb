# Update Cloudflare account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new

# there is a valid "cloudflare_account" in the system
CLOUDFLARE_ACCOUNT_DATA_ID = ENV["CLOUDFLARE_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::CloudflareAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudflareAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::CloudflareAccountUpdateRequestAttributes.new({
      api_key: "fakekey",
      email: "dev@datadoghq.com",
      zones: [
        "zone-id-3",
      ],
    }),
    type: DatadogAPIClient::V2::CloudflareAccountType::CLOUDFLARE_ACCOUNTS,
  }),
})
p api_instance.update_cloudflare_account(CLOUDFLARE_ACCOUNT_DATA_ID, body)
