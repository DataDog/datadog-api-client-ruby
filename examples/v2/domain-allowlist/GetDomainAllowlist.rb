# Get Domain Allowlist returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DomainAllowlistAPI.new
p api_instance.get_domain_allowlist()
