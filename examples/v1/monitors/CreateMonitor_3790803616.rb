# Create a ci-pipelines monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::CI_PIPELINES_ALERT,
  query: 'ci-pipelines("ci_level:pipeline @git.branch:staging* @ci.status:error").rollup("count").by("@git.branch,@ci.pipeline.name").last("5m") >= 1',
  message: "some message Notify: @hipchat-channel",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 1,
    }),
  }),
})
p api_instance.create_monitor(body)
