# Search security findings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_security_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityFindingsSearchRequest.new({
  data: DatadogAPIClient::V2::SecurityFindingsSearchRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityFindingsSearchRequestDataAttributes.new({
      filter: "@severity:(critical OR high)",
    }),
  }),
})
p api_instance.search_security_findings(body)
