# Create an LLM Observability monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::LLM_OBSERVABILITY_ALERT,
  query: 'llm-observability("*").rollup("count").last("2h") > 0',
  message: "LLM observability alert triggered",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 0,
    }),
    include_tags: true,
    notify_audit: false,
  }),
})
p api_instance.create_monitor(body)
