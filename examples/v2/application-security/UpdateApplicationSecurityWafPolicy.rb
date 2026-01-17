# Update a WAF Policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityPolicyUpdateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityPolicyUpdateAttributes.new({
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
p api_instance.update_application_security_waf_policy("policy_id", body)
