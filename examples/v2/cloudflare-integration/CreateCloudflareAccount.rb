# Add Cloudflare account returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudflareIntegrationAPI.new

body = DatadogAPIClient::V2::CloudflareAccountCreateRequest.new({
  data: DatadogAPIClient::V2::CloudflareAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::CloudflareAccountCreateRequestAttributes.new({
      api_key: "fakekey",
      email: "dev@datadoghq.com",
      name: "examplecloudflareintegration",
    }),
    type: DatadogAPIClient::V2::CloudflareAccountType::CLOUDFLARE_ACCOUNTS,
  }),
})
p api_instance.create_cloudflare_account(body)
