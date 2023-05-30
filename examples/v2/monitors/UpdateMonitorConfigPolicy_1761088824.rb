# Edit a monitor configuration policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_configuration_policy" in the system
MONITOR_CONFIGURATION_POLICY_DATA_ID = ENV["MONITOR_CONFIGURATION_POLICY_DATA_ID"]

body = DatadogAPIClient::V2::MonitorConfigPolicyEditRequest.new({
  data: DatadogAPIClient::V2::MonitorConfigPolicyEditData.new({
    attributes: DatadogAPIClient::V2::MonitorConfigPolicyAttributeEditRequest.new({
      policy: DatadogAPIClient::V2::MonitorConfigPolicyTagPolicy.new({
        tag_key: "examplemonitor",
        tag_key_required: false,
        valid_tag_values: [
          "prod",
          "staging",
        ],
      }),
      policy_type: DatadogAPIClient::V2::MonitorConfigPolicyType::TAG,
    }),
    id: MONITOR_CONFIGURATION_POLICY_DATA_ID,
    type: DatadogAPIClient::V2::MonitorConfigPolicyResourceType::MONITOR_CONFIG_POLICY,
  }),
})
p api_instance.update_monitor_config_policy(MONITOR_CONFIGURATION_POLICY_DATA_ID, body)
