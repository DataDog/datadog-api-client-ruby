# Create a ci-tests monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::CI_TESTS_ALERT,
  query: 'ci-tests("type:test @git.branch:staging* @test.status:fail").rollup("count").by("@test.name").last("5m") >= 1',
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
