# Create a monitor configuration policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

body = DatadogAPIClient::V2::MonitorConfigPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::MonitorConfigPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::MonitorConfigPolicyAttributeCreateRequest.new({
      policy_type: DatadogAPIClient::V2::MonitorConfigPolicyType::TAG,
      policy: DatadogAPIClient::V2::MonitorConfigPolicyTagPolicyCreateRequest.new({
        tag_key: "examplemonitor",
        tag_key_required: false,
        valid_tag_values: [
          "prod",
          "staging",
        ],
      }),
    }),
    type: DatadogAPIClient::V2::MonitorConfigPolicyResourceType::MONITOR_CONFIG_POLICY,
  }),
})
p api_instance.create_monitor_config_policy(body)
