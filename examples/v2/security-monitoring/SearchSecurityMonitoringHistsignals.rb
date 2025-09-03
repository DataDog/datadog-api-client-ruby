# Search hist signals returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_security_monitoring_histsignals".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new({
  filter: DatadogAPIClient::V2::SecurityMonitoringSignalListRequestFilter.new({
    from: "2019-01-02T09:42:36.320Z",
    query: "security:attack status:high",
    to: "2019-01-03T09:42:36.320Z",
  }),
  page: DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage.new({
    cursor: "eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==",
    limit: 25,
  }),
  sort: DatadogAPIClient::V2::SecurityMonitoringSignalsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
p api_instance.search_security_monitoring_histsignals(opts)
