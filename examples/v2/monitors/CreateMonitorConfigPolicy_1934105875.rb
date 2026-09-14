# Create a downtime duration monitor configuration policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

body = DatadogAPIClient::V2::MonitorConfigPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::MonitorConfigPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::MonitorConfigPolicyAttributeCreateRequest.new({
      policy_type: DatadogAPIClient::V2::MonitorConfigPolicyType::DOWNTIME,
      policy: DatadogAPIClient::V2::MonitorConfigPolicyDowntimePolicyCreateRequest.new({
        max_duration_ms: 3600000,
      }),
    }),
    type: DatadogAPIClient::V2::MonitorConfigPolicyResourceType::MONITOR_CONFIG_POLICY,
  }),
})
p api_instance.create_monitor_config_policy(body)
