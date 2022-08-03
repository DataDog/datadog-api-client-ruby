# Get a list of security signals returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalListRequest.new({
  filter: DatadogAPIClient::V2::SecurityMonitoringSignalListRequestFilter.new({
    from: (Time.now + -15 * 60),
    query: "security:attack status:high",
    to: Time.now,
  }),
  page: DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::SecurityMonitoringSignalsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.search_security_monitoring_signals_with_pagination(opts) { |item| puts item }
