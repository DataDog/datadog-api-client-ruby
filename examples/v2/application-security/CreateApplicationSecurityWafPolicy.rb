# Create a WAF Policy returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityPolicyCreateAttributes.new({
      based_on: "recommended",
      description: "Policy applied to internal web applications.",
      is_default: false,
      name: "Internal Network Policy",
      protection_presets: [
        "attack-tools",
      ],
      rules: [
        DatadogAPIClient::V2::ApplicationSecurityPolicyRuleOverride.new({
          blocking: false,
          enabled: true,
          id: "rasp-001-002",
        }),
      ],
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityPolicyScope.new({
          env: "prod",
          service: "billing-service",
        }),
      ],
      version: 0,
    }),
    type: DatadogAPIClient::V2::ApplicationSecurityPolicyType::POLICY,
  }),
})
p api_instance.create_application_security_waf_policy(body)
