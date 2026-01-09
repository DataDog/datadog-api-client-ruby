# Search security findings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityFindingsSearchRequest.new({
  data: DatadogAPIClient::V2::SecurityFindingsSearchRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityFindingsSearchRequestDataAttributes.new({
      filter: "@severity:(critical OR high)",
    }),
  }),
})
p api_instance.search_security_findings(body)
