# Update a suppression rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "suppression" in the system
SUPPRESSION_DATA_ID = ENV["SUPPRESSION_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateAttributes.new({
      suppression_query: "env:staging status:low",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSuppressionType::SUPPRESSIONS,
  }),
})
p api_instance.update_security_monitoring_suppression(SUPPRESSION_DATA_ID, body)
