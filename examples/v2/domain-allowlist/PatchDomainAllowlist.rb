# Sets Domain Allowlist returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DomainAllowlistAPI.new

body = DatadogAPIClient::V2::DomainAllowlistRequest.new({
  data: DatadogAPIClient::V2::DomainAllowlist.new({
    attributes: DatadogAPIClient::V2::DomainAllowlistAttributes.new({
      domains: [
        "@static-test-domain.test",
      ],
      enabled: false,
    }),
    type: DatadogAPIClient::V2::DomainAllowlistType::DOMAIN_ALLOWLIST,
  }),
})
p api_instance.patch_domain_allowlist(body)
